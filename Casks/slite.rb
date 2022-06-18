cask "slite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.2.12"

  if Hardware::CPU.intel?
    sha256 "0bc0181337b5cd43664f08921e2aded199c10b302d407fe5a8605ce80fadbed4"
  else
    sha256 "a0204a62db2f5f8731302fc5821665face8b78251deca79355452f1948738361"
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
