cask "shift" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "8.0.44.425"

  if Hardware::CPU.intel?
    sha256 "9d120330a5d3b912f05d1250a87e96226b585c1c089046ed98f77ae978f42fa5"
  else
    sha256 "dd2667a827a7ee58f66fdc68b71efa8cc4b93c7559b72c059fbda08f78fbc54e"
  end

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
