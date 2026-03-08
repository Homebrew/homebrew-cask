cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "bb1458f2da3054edfafe6f0061ff6cb6788a7d41f2d0c4196fe0b1f0607c2dfb",
         intel: "49d207f5402bc8224f20c32b95f95b3cb7f07a1de82082088c9f7f07f6d83916"

  url "https://download.todesktop.com/220930m1ahpjvoh/Fabric%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/220930m1ahpjvoh/"
  name "Fabric"
  desc "Personal knowledge management and note-taking app"
  homepage "https://fabric.so/"

  livecheck do
    url "https://download.todesktop.com/220930m1ahpjvoh/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Fabric.app"

  zap trash: [
    "~/Library/Application Support/Fabric",
    "~/Library/Logs/Fabric",
  ]
end
