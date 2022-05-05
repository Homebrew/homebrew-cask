cask "slite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.2.11"

  if Hardware::CPU.intel?
    sha256 "6f925e8ff26dbc89e1344e4e07a93304000c7558ff68537b644db13788d0e4a6"
  else
    sha256 "fe5df18780cb0c51a4d5997423d3ddc55a0b3e60c261451e01dd4d39d63cfd81"
  end

  url "https://download.todesktop.com/20062929x31pwfi/Slite%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/20062929x31pwfi/"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.todesktop.com/20062929x31pwfi/latest-mac.yml"
    strategy :electron_builder
  end

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
