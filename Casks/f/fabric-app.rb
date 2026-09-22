cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "93012b32a8cbe930ac8b3e5cb440cd1f59818b5338184b7ae75dfdceca39f9dd",
         intel: "252caf511a32ce14cf82361acaad14123d921053e6f8b710e4dc729fe4cada1d"

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
