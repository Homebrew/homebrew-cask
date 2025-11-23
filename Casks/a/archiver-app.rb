cask "archiver-app" do
  version "4.3.1"
  sha256 "f8e2f968aa750bdffce38d4d5a06232dc6ddd4f0ca456c6cb6c668e658d2737c"

  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url "https://api.incrediblebee.com/updates?app=Archiver&locale=en-US&mode=sparkle&short_version=#{version}"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sequoia"

  app "Archiver.app"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
