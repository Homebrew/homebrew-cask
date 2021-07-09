cask "rubymine" do
  version "2021.1.3,211.7628.26"

  if Hardware::CPU.intel?
    sha256 "5c09ad7dbb861b58a1b2d9094b13cd4b0380f232076cf841e525d00581c45b72"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  else
    sha256 "e11d9e5d93e059a1582e489e4642496708f771d53e67f04e1995e6490083122e"

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
