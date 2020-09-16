cask "pycharm-edu" do
  version "2020.2.1,202.6948.82"
  sha256 "9bc2c4e9c0d093aa8dedf7d899ac65aeced7a81db0b2bb69f574c229c3770d7b"

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release"
  name "Jetbrains PyCharm Educational Edition"
  name "PyCharm Edu"
  desc "Professional IDE for scientific and web Python development"
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
