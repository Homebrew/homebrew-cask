cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2406.2.0"
  sha256 arm:   "137db0b9b92f32d4ad0a5d32898c8a47e6fef1fc5ae12558c8495df7ebd11610",
         intel: "9c4c4cfd2ec1cb3a46d9da639e13fba43d0630f55d37e1dc6af16691a6b09d7e"

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
