cask "dialpad" do
  arch arm: "arm64", intel: "x64"

  version "2409.3.1"
  sha256 arm:   "c5c16e8291d957d03f1ff8f1058ead46ec115b82ad1bcf52c3ee5928446a869b",
         intel: "10e84a2a67be88f9f99680b1214a01453e51d869efe180eb230d3ee495877d8c"

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
