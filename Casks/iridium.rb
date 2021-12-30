cask "iridium" do
  version "2021.12.96"
  sha256 "28168df7f2aeaaa300222602314a6dc2f7a012581f9c825a1fe95e64d13c3f5b"

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
