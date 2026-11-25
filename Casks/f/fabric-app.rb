cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.18"
  sha256 arm:   "9c0462b069e981b65db365d60af507f2c639e16e079085bc60e020d09db6b0e1",
         intel: "91db2314031ce8f499e1c30ceec1069a8da1d9572adf6b13ba275b1dfe29b09f"

  url "https://download.todesktop.com/220930m1ahpjvoh/Fabric%20#{version}-#{arch}-mac.zip"
  name "Fabric"
  desc "Personal knowledge management and note-taking app"
  homepage "https://fabric.so/"

  livecheck do
    url "https://download.todesktop.com/220930m1ahpjvoh/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Fabric.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.220930m1ahpjvoh.sfl*",
    "~/Library/Application Support/Fabric",
    "~/Library/Logs/Fabric",
    "~/Library/Preferences/com.todesktop.220930m1ahpjvoh.plist",
  ]
end
