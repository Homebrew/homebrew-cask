cask "shift" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "8.0.45.438"

  if Hardware::CPU.intel?
    sha256 "938d87866304be57893da845359d89ae3d2e37d3ed61a6a7dac5def5614c44f9"
  else
    sha256 "573497d254e8ad832cb0070dda15952d49c4b7b4f1e0bb8f7540d08fe9803a23"
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
