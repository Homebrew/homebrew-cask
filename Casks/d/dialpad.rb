cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2603.3.5"
  sha256 arm:   "feca9d65f049ad8a1c32060ededcdcaf5a6ebe03a3fda3dee95d9662cf6bc236",
         intel: "2f5a1711e7572c6b6007121cd195e0f6f5f8f19f7b1e4586bfea0765effbcfa2"

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
