cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "814c5c080818554b23400e85f53258a52c102b16def62ed72b87d332cc009107",
         intel: "3eb46e778d9cf476ac0cc61dbb37c45f9b50125ac0f21f13fb05415e9f5078d1"

  url "https://download.todesktop.com/210610elr9v3cm6/Castr%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210610elr9v3cm6/"
  name "castr"
  desc "Desktop application for controlling Castr streaming platform"
  homepage "https://castr.io/"

  livecheck do
    url "https://download.todesktop.com/210610elr9v3cm6/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Castr.app"

  zap trash: [
    "~/Library/Application Support/Castr",
    "~/Library/Logs/Castr",
  ]
end
