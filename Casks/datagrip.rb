cask "datagrip" do
  version "2020.2.3,202.7319.56"
  sha256 "9d150f3f2da74f43d232ded7ac6b4fdba0a53b7f62d488b873353e53175d94b9"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
  name "DataGrip"
  homepage "https://www.jetbrains.com/datagrip/"

  auto_updates true

  app "DataGrip.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "datagrip") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/DataGrip#{version.major_minor}",
    "~/Library/Caches/DataGrip#{version.major_minor}",
    "~/Library/Logs/DataGrip#{version.major_minor}",
    "~/Library/Preferences/DataGrip#{version.major_minor}",
  ]
end
