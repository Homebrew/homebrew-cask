cask "shift" do
  arch arm: "arm64", intel: "x64"

  version "9.4.1.1150"
  sha256 arm:   "dad847955e97a7f802dd5a5c7111891769e2df0ea8a98dd76b40eaee049557b8",
         intel: "23759d0a9e7c220c4980030c0e838b6f25117b2a24f07029e336e3d46d58e48a"

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
