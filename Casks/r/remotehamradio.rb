cask "remotehamradio" do
  version "2.3.0"
  sha256 "4c5379c4d1f8878bd350eb0fd05f31f0e7d0e7d6edb3eb4541d6bc53aa0b143e"

  url "https://s3.amazonaws.com/rhr-electron/desktop-releases/RemoteHamRadio-#{version}-universal-mac.zip",
      verified: "s3.amazonaws.com/rhr-electron/desktop-releases/"
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
