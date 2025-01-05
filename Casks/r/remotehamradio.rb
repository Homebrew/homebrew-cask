cask "remotehamradio" do
  version "2.4.1"
  sha256 "2d2da356ac92d6ef7d163a5f806db9926b7b589a8d1be0ad6d62780a21914273"

  url "https://rhr-electron.s3.amazonaws.com/desktop-releases/RemoteHamRadio-#{version}-universal-mac.zip",
      verified: "rhr-electron.s3.amazonaws.com/desktop-releases/"
  name "RemoteHamRadio"
  desc "Desktop console app for RemoteHamRadio service"
  homepage "https://www.remotehamradio.com/"

  livecheck do
    url "https://update.remotehamradio.com/desktop/download?platform=Macintosh"
    regex(/href=.*?RemoteHamRadio[._-]v?(\d+(?:\.\d+)+)[._-]universal[._-]mac\.zip/i)
  end

  depends_on macos: ">= :catalina"

  app "RemoteHamRadio.app"

  zap trash: [
    "~/Library/Application Support/RemoteHamRadio",
    "~/Library/Preferences/com.rst.rhr-desktop.plist",
  ]
end
