cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "fc4381771318927d9531d23632bbf3720c432c44795f03e3b719dc41d0b47a7c",
         intel: "47bd863483f5360f6b08f1ad0dd593ce23eb1798c271393c021393878eab2771"

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

  app "Castr.app"

  zap trash: [
    "~/Library/Application Support/Castr",
    "~/Library/Logs/Castr",
  ]
end
