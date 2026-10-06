cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.15"
  sha256 arm:   "9f41afd6fbf895c08e450be4c6f5acb458c616b6c1d92a6dedd9a2c94a9f080f",
         intel: "8c20b867718abfa39c2022612c107b4c3ac6935c878718c82b8b58bc0dc5d1b2"

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
