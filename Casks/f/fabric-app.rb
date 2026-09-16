cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "ce31662fda4eff528a7bdc8a02c3b20b76dfd2f692f1b68cfac7c3d2f8e7a12b",
         intel: "c485c638a2fa05a684b0c57915f4bbb7375dea07df28b78d847cc301f7e57e15"

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
