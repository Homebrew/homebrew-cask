cask "remotehamradio" do
  version "2.4.0"
  sha256 "ced6a78c49c1f6235ff9cd0a39d1a120e02aeb5e3a8cb74688ab59a83f1a367e"

  url "https://rhr-electron.s3.amazonaws.com/desktop-releases/RemoteHamRadio-#{version}-universal-mac.zip",
      verified: "rhr-electron.s3.amazonaws.com/desktop-releases/"
  name "RemoteHamRadio"
  desc "Desktop console app for RemoteHamRadio service"
  homepage "https://www.remotehamradio.com/"

  livecheck do
    url "https://update.remotehamradio.com/desktop/download?platform=Macintosh"
    regex(/href=.*?RemoteHamRadio[._-]v?(\d+(?:\.\d+)+)[._-]universal[._-]mac\.zip/i)
  end

  app "RemoteHamRadio.app"

  zap trash: [
    "~/Library/Application Support/RemoteHamRadio",
    "~/Library/Preferences/com.rst.rhr-desktop.plist",
  ]
end
