cask "jabra-direct" do
  version "6.17.21301"
  sha256 :no_check

  url "https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg",
      verified: "jabraxpressonlineprdstor.blob.core.windows.net/jdo/"
  name "Jabra Direct"
  desc "Optimise and personalise your Jabra headset"
  homepage "https://www.jabra.com/software-and-services/jabra-direct"

  livecheck do
    url "https://jabraexpressonlinejdo.jabra.com/jdo/jdo.json"
    regex(/"MacVersion"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "JabraDirectSetup.pkg"

  uninstall quit:       [
              "com.jabra.Avaya3Driver",
              "com.jabra.AvayaDriver",
              "com.jabra.BriaDriver",
              "com.jabra.directonline",
              "com.jabra.softphoneService",
              "nl.superalloy.oss.terminal-notifier",
            ],
            login_item: "Jabra Direct",
            pkgutil:    [
              "com.jabra.directonline",
              "com.jabra.JabraFirmwareUpdate",
              "com.jabra.kext",
            ],
            delete:     "/Applications/Jabra Direct.app"

  zap trash: [
    "~/Library/Application Support/Jabra Direct",
    "~/Library/Application Support/Jabra",
    "~/Library/Application Support/JabraSDK",
    "~/Library/Logs/Jabra Direct",
    "~/Library/Preferences/com.jabra.directonline.helper.plist",
    "~/Library/Preferences/com.jabra.directonline.plist",
    "~/Library/Preferences/com.jabra.prefsettings.plist",
    "~/Library/Saved Application State/com.jabra.directonline.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
