cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2603.2.1"
  sha256 arm:   "58e17af17140a843abfbad7ac5f7ae975e814a612cb308837f990d9944d0cbb4",
         intel: "2edc00fc2f147dac05e60d87414b309d9b74f5dcf32a956ae93e42ffce96ed9a"

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
