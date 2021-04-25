cask "pycharm" do
  version "2021.1.1,211.7142.13"

  if Hardware::CPU.intel?
    sha256 "549e5f5b75e702d9ca24e7c89dcff4df1eef27d454ed70f2d59a9f9fba676d37"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  else
    sha256 "49cd1fa712996dfe728892a033c353eb5b21e5c63742778e54a41cea39aa1175"
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
