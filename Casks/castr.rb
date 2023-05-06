cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "6946f5810bbcfe74be76262df9821636c2832d87c52d124386cf0e13105b020c",
         intel: "db7eb6ee1faacabc97e625a86377338fb564dd5220a457a27ac8c2f1dfca6c4f"

  url "https://download.todesktop.com/210610elr9v3cm6/Castr%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/210610elr9v3cm6/"
  name "castr"
  desc "Desktop application for controlling Castr streaming platform"
  homepage "https://castr.io/"

  livecheck do
    url "https://download.todesktop.com/210610elr9v3cm6/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Castr.app"

  zap trash: [
    "~/Library/Application Support/Castr",
    "~/Library/Logs/Castr",
  ]
end
