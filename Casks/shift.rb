cask "shift" do
  version "7.2.18"
  sha256 "6d779264fad6736675f56c74a9cbd8d778baba7234123f42d7182cfb15667cc0"

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
