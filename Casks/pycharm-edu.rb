cask "pycharm-edu" do
  version "2020.2,202.6397.112"
  sha256 "a9f8c09a021a8e283156e0df5eee7809a5741eaff37fc8b13483efcd248db978"

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
