cask "archiver-app" do
  version "4.3.0"
  sha256 "74aeec7e3e977252e3b7608efcf843597908a9d58ad3b7ed77af669daf3962fc"

  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "Archiver.app"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
