cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2504.1.0"
  sha256 arm:   "65cdb8b68a1de9e7416ec8d32ef79e7bf66fd9f0ba6e6c9c47c2ba4ff04c6a90",
         intel: "3a37e68a36bda62e684e793e55ba58216289dc8e22e158b839bffa71b6e81d2b"

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

  depends_on macos: ">= :catalina"

  app "Dialpad.app"

  zap trash: [
    "~/Library/Application Support/Dialpad",
    "~/Library/Caches/com.electron.dialpad*",
    "~/Library/HTTPStorages/com.electron.dialpad",
    "~/Library/Preferences/com.electron.dialpad.plist",
    "~/Library/Saved Application State/com.electron.dialpad.savedState",
  ]
end
