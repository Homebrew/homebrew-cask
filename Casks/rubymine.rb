cask "rubymine" do
  version "2021.2,212.4746.90"

  if Hardware::CPU.intel?
    sha256 "7dbdfff9afa54d90350ae9d6a43f254e75347b379339d85a912ac757389df4cf"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  else
    sha256 "f903b660da6d871f8327115d7abc2bfdf1d3eee2c51e57236e36173ed2970c3e"

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
