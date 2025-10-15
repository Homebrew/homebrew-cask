cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "9.1.0"
  sha256 arm:   "1c5b25ee657f879b11c00861e0f00ae03370745036a0f103004009d892208630",
         intel: "1ac3b0c07d7c6f64e4068591f66a7921f5ce4ea8d7ad0f60e76271b4f91a6e73"

  url "https://download.onlyoffice.com/install/desktop/editors/mac/#{arch}/updates/ONLYOFFICE-#{arch}-#{version}.zip"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://download.onlyoffice.com/install/desktop/editors/mac/#{arch}/onlyoffice.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
  ]
end
