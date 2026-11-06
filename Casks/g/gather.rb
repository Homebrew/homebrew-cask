cask "gather" do
  arch arm: "-arm64"

  version "1.41.3"
  sha256 arm:   "9a94de6685caa265cd32f71ccb0351de9615acde68780a3113adb6d2b7a759a5",
         intel: "b66204f1e0c29c6936d3bcb24b361c4abe1e21183628093ef473a076798b4ad1"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
