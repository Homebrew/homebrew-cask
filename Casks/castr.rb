cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "e61107f6f60b58c9507a9ce4889d5ef3f2409891f0868d32995b91cf2179bf6e",
         intel: "982363c40112102a24c990ff333446a113b7980cfe4c8e161d3b7d6692447e79"

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
