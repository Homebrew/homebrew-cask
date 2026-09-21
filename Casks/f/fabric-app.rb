cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "03b5247077ff8715ceff2a15c0e7c61a1f22da966834b69a0377430e1cf72f17",
         intel: "d2c06b1bc0868d4330ea6f715af60ff842d2674d851e772d836db5fee562ec35"

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
    "~/Library/Application Support/Fabric",
    "~/Library/Logs/Fabric",
  ]
end
