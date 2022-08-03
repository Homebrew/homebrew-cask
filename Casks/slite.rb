cask "slite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.2.14"

  if Hardware::CPU.intel?
    sha256 "8103be5d53d349cf5070ec98e74df8d01ded0f93e8c84b9d18b18c19c6210b76"
  else
    sha256 "a74ad9345c3dba1874ec682280996be21b2c517824879a1f9fc0ee9896c940df"
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
