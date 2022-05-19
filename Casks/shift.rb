cask "shift" do
  version "7.2.17"
  sha256 "15c6bb9988860295ebcbd390d21c8d2a3a5c0bd6bddc779fc7d1edb3d056b9f5"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  livecheck do
    url "https://tryshift.com/download/?platform=mac"
    regex(%r{href=.*?version/(\d+(?:[._-]\d+)+)[._-]stable/osx[._-]64}i)
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
