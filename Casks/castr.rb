cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "9ac93c4764c84e740c4abf8d8bcd84636c8194c3c33b6cda7b7955442599b6c2",
         intel: "4038e8c100d1e2d80714b4f9a9b5c7739aeb61e9e9fd2a0e9be257b2a04b8b70"

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
