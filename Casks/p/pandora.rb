cask "pandora" do
  version "15.0.3"
  sha256 "1858152de9d5fe18c876093a95c39c92fe878fba633c3e54e27fcdeb70a06c15"

  url "https://p-desktop-app.s3.amazonaws.com/releases/Pandora-#{version}.dmg",
      verified: "p-desktop-app.s3.amazonaws.com/"
  name "Pandora"
  desc "Desktop client for the Pandora web radio service"
  homepage "https://www.pandora.com/desktop"

  livecheck do
    url "https://pdora.co/desktop_mac_download"
    strategy :header_match
  end

  app "Pandora.app"

  zap trash: [
    "~/Library/Application Support/Pandora",
    "~/Library/Logs/Pandora",
    "~/Library/Preferences/com.pandora.desktop.plist",
    "~/Library/Saved Application State/com.pandora.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
