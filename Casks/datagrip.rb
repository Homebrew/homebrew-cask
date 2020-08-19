cask "datagrip" do
  version "2020.2.1,202.6948.45"
  sha256 "aa9d8775474ebc12a51c15b26935ccd4445b041175c3600f580538575168a23d"

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
