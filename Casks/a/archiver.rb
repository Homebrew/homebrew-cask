cask "archiver" do
  version "4.2.0"
  sha256 "06e77ae459ddecba822a33fdfb2ab8fefb873f072ec2140398a9f2f2c8212460"

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
