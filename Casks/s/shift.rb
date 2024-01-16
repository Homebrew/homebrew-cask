cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.2.3.1064"
  sha256 arm:   "20a7011acb8226fd571241bdc2f003973f2c32b1a0c4d8d87c55e8a2c719aea7",
         intel: "b95e1a90c0608a6b10cfd6d4f9f20152188654cac6211d17de2f68bde031b2c5"

  url "https://updates.tryshift.com/v#{version.major_minor_patch}/stable/shift-v#{version}-stable-#{arch}.dmg"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  livecheck do
    url "https://tryshift.com/download/?platform=mac"
    regex(/href=.*?(\d+(?:[._-]\d+)+)[._-]stable.*?\.dmg/i)
  end

  app "Shift.app"

  zap trash: [
    "~/Library/Application Support/.Shift",
    "~/Library/Application Support/Shift",
    "~/Library/Caches/com.rdbrck.shift.ShipIt",
    "~/Library/Caches/com.rdbrck.shift",
    "~/Library/HTTPStorages/com.rdbrck.shift",
    "~/Library/Preferences/com.rdbrck.shift.plist",
    "~/Library/Saved Application State/com.rdbrck.shift.savedState",
  ]
end
