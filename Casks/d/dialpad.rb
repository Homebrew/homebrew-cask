cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2512.0.0"
  sha256 arm:   "0f0fdc39ed1f5da1eaa431ba5a1e0a6811ecbc62b1a3cfd2a79d3869f71f85da",
         intel: "5e4901cf9e12fee1cf3ac83e81c7484a57337d9a4a98d7616b04177136313b1c"

  url "https://storage.googleapis.com/dialpad_native/osx/#{arch}/Dialpad.#{version}.zip",
      verified: "storage.googleapis.com/dialpad_native/osx/#{arch}"
  name "Dialpad"
  desc "Cloud communication platform"
  homepage "https://dialpad.com/download"

  livecheck do
    url "https://dialpad.com/native/checkversion/darwin/#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "Dialpad.app"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end
