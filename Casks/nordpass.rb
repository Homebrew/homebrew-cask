cask "nordpass" do
  version "4.16.22"
  sha256 :no_check

  url "https://downloads.npass.app/mac/NordPass.dmg",
      verified: "https://downloads.npass.app/"
  name "NordPass"
  desc "Store credentials in a single place and log in on any device, even when offline"
  homepage "https://nordpass.com/"

  livecheck do
    url "https://downloads.npass.app/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

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
