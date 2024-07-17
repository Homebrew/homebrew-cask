cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta37"
  sha256 arm:   "599c045bf4f2563217757c03b583c6e662979a5d3ac7fd92ff324d709ebc72cf",
         intel: "e54e0622e71fb381f457dd6a54d68a408e4e6198e18b0f5cc88235daef98d65d"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://threema.ch/en/download-md"
    regex(/href=.*?threema[._-]desktop[._-]v?(\d+(?:(?:[.-]|(beta))+\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
