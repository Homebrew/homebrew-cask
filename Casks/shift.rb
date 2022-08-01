cask "shift" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "8.0.46.443"

  if Hardware::CPU.intel?
    sha256 "510c15f5c6c012710eea3bb7d4706f9fc26e069a7021a43bb6fa8e0b49cdf8ca"
  else
    sha256 "5e07cb8f12b64f9f23b0971b1ec8127a9c204272ace6cb2c2084c5c46b71ac58"
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
