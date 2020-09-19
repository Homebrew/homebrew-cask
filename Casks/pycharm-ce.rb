cask "pycharm-ce" do
  version "2020.2.2,202.7319.64"
  sha256 "92a7ce82cac57550328432dcf31bca469288f667100e7f055166efd41081de4e"

  url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
  name "Jetbrains PyCharm Community Edition"
  name "PyCharm CE"
  desc "Free and open-source IDE for Python programming - Community Edition"
  homepage "https://www.jetbrains.com/pycharm/"

  auto_updates true

  app "PyCharm CE.app"

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
    "~/Library/Caches/PyCharmCE#{version.major_minor}",
    "~/Library/Caches/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharmCE#{version.major_minor}",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Preferences/PyCharmCE#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
