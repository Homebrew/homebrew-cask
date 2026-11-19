cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.17"
  sha256 arm:   "0339c68a05c696f2c415e915eeeae3489c3d77760e2bddbe1616049a47c4c8a8",
         intel: "dc94e151877d187b09d1ea894e0c02b612583c6def35a13f58a85cc842d4bd39"

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
