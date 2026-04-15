cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "863c2b494ad2ea6d7cf370f2e6cc2d6c8e27b7865f6a3a89093c6de9a5e2ef76",
         intel: "d71cb53fb07cdcf2c9cb1ee8788de2e90d2088eda438bcde0e606cb526ec15e9"

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
