cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.3.2.1093"
  sha256 arm:   "d0824001cc946a7242323fea78c74e32ab1b7cbdf66ebdb88fbc3e54c9f733cd",
         intel: "8fdbb28fe0fe484cb688b7fa2fffc0a46a91ecf89557d98f1227b846553ed782"

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
