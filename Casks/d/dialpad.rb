cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2509.1.1"
  sha256 arm:   "bbe32f3e57b9400bf7c8beffcb37e44696bc097dbf276c053854255bbc6b6e63",
         intel: "d0caf8d523cf989ae122ff076ea58177b8fcc9b9320ff28ca5f84c605de8721b"

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

  depends_on macos: ">= :big_sur"

  app "Dialpad.app"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end
