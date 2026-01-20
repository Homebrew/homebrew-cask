cask "archiver-app" do
  version "5.0.0"
  sha256 "f0a3853f73ddbbae360ac017d57321b5598e777e87592cdabe72ffe0a5aa8008"

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
