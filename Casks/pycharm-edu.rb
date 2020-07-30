cask "pycharm-edu" do
  version "2020.1.2,201.7846.104"
  sha256 "a287f99d4945ba4ad978a3450c8c91488f555e98f7ea5888f2e9812f596d6be9"

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release"
  name "Jetbrains PyCharm Educational Edition"
  name "PyCharm Edu"
  homepage "https://www.jetbrains.com/pycharm-edu/"

  auto_updates true

  app "PyCharm Edu.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PyCharmEdu#{version.major_minor}",
    "~/Library/Caches/PyCharmEdu#{version.major_minor}",
    "~/Library/Logs/PyCharmEdu#{version.major_minor}",
    "~/Library/Preferences/PyCharmEdu#{version.major_minor}",
  ]
end
