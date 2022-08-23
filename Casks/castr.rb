cask "castr" do
  arch arm: "arm64-mac", intel: "mac"

  version "1.0.0"
  sha256 arm:   "2d4c5b61f0018f2fa3d63000d070bfdab68d3faccb8e8901e7a50e6a1c4c0a84",
         intel: "7fb499498d4dfb44d0f80a339933ac7f22071ed1c6f65f2164819926c54d9736"

  url "https://download.todesktop.com/210610elr9v3cm6/Castr%20#{version}-#{arch}-update.zip",
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
