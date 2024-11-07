cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2410.3.1"
  sha256 arm:   "f01b9f26f2273a2dee5d01d7dd04b4558d46b943ca7d96f502b6d45cc42faa43",
         intel: "b6e8fc243d991bd789013876035ce471460cfa9aa5403bf3aa3281e1954d54bb"

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

  depends_on macos: ">= :high_sierra"

  app "Dialpad.app"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end
