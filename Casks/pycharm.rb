cask "pycharm" do
  version "2020.3.4,203.7717.65"

  if Hardware::CPU.intel?
    sha256 "629c6cfa6ca395f509276a7e58bcb84a81af5b4f9949a032c45e497e48724670"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  else
    sha256 "19f2ed11d47f1aabbc06a997c22c14bf52df95ef91456dfe354aef4f495b7c26"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}-aarch64.dmg"
  end

  name "PyCharm"
  desc "IDE for professional Python development"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

  app "PyCharm.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Application Support/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Caches/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharm#{version.major_minor}",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.pycharm.*.plist",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
