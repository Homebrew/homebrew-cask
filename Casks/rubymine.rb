cask "rubymine" do
  version "2021.1.1,211.7142.41"

  if Hardware::CPU.intel?
    sha256 "dab2fdf132981de92818ebdc235874ee507c1e58eb68574f42791b2c0927edef"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  else
    sha256 "0cd0d267d54e1f8ed14595a055fe8041a811d42fa4ae3b1d7f091278042741ae"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}-aarch64.dmg"
  end

  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["RM"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RubyMine.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "mine") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end
