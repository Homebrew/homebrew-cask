cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.6.2.1222"
  sha256 arm:   "ae7252fa229fbc9b0e50782d156e9b093fff241c0c5d5c0089516a72be457a54",
         intel: "2e1ddd55317ab4016a27a7dafd91179e682db4e30b5e5284400ea1f0288355f0"

  url "https://updates.tryshift.com/v#{version.major_minor_patch}/stable/shift-v#{version}-stable-#{arch}.dmg",
      verified: "updates.tryshift.com/"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://shift.com/"

  livecheck do
    url "https://updates.tryshift.com/appcast/stable/mac-#{arch}.xml"
    regex(/shift[._-]v?(\d+(?:\.\d+)+)[._-]stable[._-]#{arch}\.dmg/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Shift.app"

  zap trash: [
    "~/Library/Application Support/.Shift",
    "~/Library/Application Support/Shift",
    "~/Library/Caches/com.rdbrck.shift",
    "~/Library/Caches/com.rdbrck.shift.ShipIt",
    "~/Library/HTTPStorages/com.rdbrck.shift",
    "~/Library/Preferences/com.rdbrck.shift.plist",
    "~/Library/Saved Application State/com.rdbrck.shift.savedState",
  ]
end
