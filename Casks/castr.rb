cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "4cec728602b60ce2086ca8731f9f19244a0e7faedb33fcbbe4ef34488f9150d4",
         intel: "ebc8fd2fcc0e3cc56c69eb9d4c8cae0ce969890da2dbe2664eb7cbfa8031005e"

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
