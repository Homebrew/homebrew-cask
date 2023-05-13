cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "8.5.3.818"
  sha256 arm:   "e596515ae44326f960a913591e264eaefc3a68b91cbb10fa3381db7b499ec9c7",
         intel: "8ba1e944d76e88bf7fdc2be8dc107832e219b3cce1742703fe66ccfbcf2d238e"

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
