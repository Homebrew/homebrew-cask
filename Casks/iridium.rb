cask "iridium" do
  version "2021.10.95"
  sha256 "923d54e713d3e6d4de385033ab99bd6fbaeb94ef51d87ec3049038e1339c0e70"

  url "https://downloads.iridiumbrowser.de/macos/#{version}/iridium-browser_#{version}_macos.dmg"
  name "Iridium Browser"
  desc "Web browser focusing on security and privacy"
  homepage "https://iridiumbrowser.de/"

  livecheck do
    url "https://iridiumbrowser.de/downloads/macos"
    regex(/iridium-browser[._-]?v?(\d+(?:\.\d+)+)[._-]?macos\.dmg/i)
  end

  app "Iridium.app"

  zap trash: [
    "~/Library/Application Support/Iridium",
    "~/Library/Caches/de.iridiumbrowser",
    "~/Library/Preferences/de.iridiumbrowser.plist",
    "~/Library/Saved Application State/de.iridiumbrowser.savedState",
  ]
end
