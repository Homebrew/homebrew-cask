cask "slite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.2.13"

  if Hardware::CPU.intel?
    sha256 "ca1d9ddc809e3ee9d1238d09ac0f7843d77d50b9fcc0f03fb8c1d32643a6d8fe"
  else
    sha256 "2e29bdba68226b6e54074e81351e750285fcc0de5e1234dd979ffccb5a9b193b"
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
