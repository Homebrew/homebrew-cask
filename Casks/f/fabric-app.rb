cask "fabric-app" do
  arch arm: "arm64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "bc9e049a50d7ca2d23d933baf7d89fc0a31efe992c2c1360680042f26d10da23",
         intel: "7b456b2e8e4d5ef9d82cc95f2f9e36716afb9a974b06baf8267748964eacde93"

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
