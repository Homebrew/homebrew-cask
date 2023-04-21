cask "nordpass" do
  version "5.1.12"
  sha256 :no_check

  url "https://downloads.npass.app/mac/NordPass.dmg",
      verified: "downloads.npass.app/mac/"
  name "NordPass"
  desc "Password manager"
  homepage "https://nordpass.com/"

  livecheck do
    url "https://downloads.npass.app/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "NordPass.app"

  uninstall quit:       "com.nordsec.nordpass",
            login_item: "NordPass"

  zap trash: [
    "/Library/Application Support/NordPass",
    "~/Library/Application Scripts/com.nordsec.nordpass.safari.extension",
    "~/Library/Application Support/NordPass",
    "~/Library/Containers/com.nordsec.nordpass.safari.extension",
    "~/Library/Preferences/com.nordsec.nordpass.plist",
    "~/Library/Saved Application State/com.nordsec.nordpass.savedState",
  ]
end
