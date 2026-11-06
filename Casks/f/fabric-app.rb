cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "3c3df850e030adc367e1d5b90c5f4aff320e36085f02e6acbac6471e3dc4facc",
         intel: "cc5b2c60eb437b55a6f0235dcc4cdc9619b8d6f60e5a980aa12f17d4a594c246"

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
