cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2409.4.0"
  sha256 arm:   "a1b13b0c3dd827bb5138d16592446f71ead2dd6ac67d64fc39ca3dc7d686ff97",
         intel: "5aae560f8c71ef4dcd0713bfe1969598de94bb6ceefd5a59e301a0f50be6e7bd"

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
