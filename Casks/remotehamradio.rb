cask "remotehamradio" do
  version "2.2.1"
  sha256 "f042a12c30227723eebdaaaa348ebb6b3ade4dde4126beac2514fd9a7dc10499"

  url "https://s3.amazonaws.com/rhr-electron/desktop-releases/RemoteHamRadio-#{version}-mac.zip",
      verified: "s3.amazonaws.com/rhr-electron/desktop-releases/"
  name "RemoteHamRadio"
  desc "Desktop console app for RemoteHamRadio service"
  homepage "https://www.remotehamradio.com/"

  livecheck do
    url "http://update.remotehamradio.com/desktop/download?platform=Macintosh"
    regex(/href=.*?RemoteHamRadio[._-]v?(\d+(?:\.\d+)+)-mac\.zip/i)
  end

  app "RemoteHamRadio.app"

  zap trash: [
    "~/Library/Application Support/RemoteHamRadio",
    "~/Library/Preferences/com.rst.rhr-desktop.plist",
  ]
end
