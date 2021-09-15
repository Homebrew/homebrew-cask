cask "iridium" do
  version "2021.06.91.2"
  sha256 "5f1bed1d868af54f090b82bb9a71e3773d713ff50aec3d5434795bf8d3987cdc"

  url "https://downloads.iridiumbrowser.de/macos/#{version.major_minor}-0/iridium-browser_#{version}_macos.dmg"
  name "Iridium Browser"
  desc "Web browser focusing on security and privacy"
  homepage "https://iridiumbrowser.de/"

  livecheck do
    url "https://iridiumbrowser.de/downloads/macos"
    strategy :page_match
    regex(/iridium-browser[._-]?(\d+(?:\.\d+)*)[._-]?macos\.dmg/i)
  end

  app "Iridium.app"

  zap trash: [
    "~/Library/Application Support/Iridium",
    "~/Library/Caches/de.iridiumbrowser",
    "~/Library/Preferences/de.iridiumbrowser.plist",
    "~/Library/Saved Application State/de.iridiumbrowser.savedState",
  ]
end
