cask "pycharm" do
  version "2020.3.2,203.6682.179"
  sha256 "f97163c33005f684b33c0a0b14ea95aa4a44ac28722c15a69bcaa919748cacad"

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release"
  name "PyCharm"
  desc "IDE for professional Python development"
  homepage "https://www.jetbrains.com/pycharm/"

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
