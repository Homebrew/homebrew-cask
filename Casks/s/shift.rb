cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.2.6.1074"
  sha256 arm:   "ed9648e7b1c62d54a20b43ec1a4dfc19a7f5a5af8ef2b91e271d9aafaa555a63",
         intel: "b2ad6011b0981c7d840495687bf73e683570781c7f9c36f7ae09d76d703255e8"

  url "https://updates.tryshift.com/v#{version.major_minor_patch}/stable/shift-v#{version}-stable-#{arch}.dmg",
      verified: "updates.tryshift.com/"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://shift.com/"

  livecheck do
    url "https://shift.com/download/?platform=mac"
    regex(/href=.*?(\d+(?:[._-]\d+)+)[._-]stable.*?\.dmg/i)
  end

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
