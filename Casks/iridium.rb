cask "iridium" do
  version "2020.11"
  sha256 "7107a639d78ca1d44313d1b54fe52d3df0e39ea782da52c3d9d528b2e8281ca5"

  url "https://downloads.iridiumbrowser.de/macos/#{version}-0/iridium-browser_#{version}-0_macos.dmg"
  appcast "https://iridiumbrowser.de/downloads/macos"
  name "Iridium Browser"
  desc "Web browser focusing on security and privacy"
  homepage "https://iridiumbrowser.de/"

  app "Iridium.app"

  zap trash: [
    "~/Library/Preferences/de.iridiumbrowser.plist",
    "~/Library/Caches/de.iridiumbrowser",
    "~/Library/Application Support/Iridium",
    "~/Library/Saved Application State/de.iridiumbrowser.savedState",
  ]
end
