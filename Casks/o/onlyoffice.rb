cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "9.0.4"
  sha256 arm:   "90107ebc162a73a703e7c4e11591b835f7a62892e24b1572085b959ee96bb222",
         intel: "c6051c2adf754b1a47f54271ecbdda995a97b937f12d271116ef350e9d2737ca"

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
  depends_on macos: ">= :sierra"

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
  ]
end
