cask "archiver-app" do
  version "5.0.0"
  sha256 "73d8468028c945ba0bc7ba86e90f1539623960ecca2beab0feadcf7c87324914"

  url "https://github.com/incbee/archiver-#{version.major}-releases/releases/download/v#{version}/Archiver-#{version}-universal-mac.zip",
      verified: "github.com/incbee/archiver-#{version.major}-releases/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Archiver.app"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
