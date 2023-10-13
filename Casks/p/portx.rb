cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0,10.47"
  sha256 arm:   "9B4EE2B0728699243A57D5FD4D7ADDAA6520745F4FBAAD81775F72D00DB40270",
         intel: "31BFA7935877ECE5F4410DFE446C27AFF62034A0DA28825CE3455931DFAAC511"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
