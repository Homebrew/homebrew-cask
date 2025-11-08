cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.6.4.1231"
  sha256 arm:   "51210315db71db2be06d95bacad1921c73011f0c62c239cd1cfa527189d255c5",
         intel: "73e27d3d282406decde79c8204693ea3eb3eee2a2d0a89c3b83c0909b174baad"

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
