cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "9.0.3"
  sha256 arm:   "dc32dee442b810fd063b5c07c6d78d1e3c5801a225d66fae718b5cb27799a07b",
         intel: "820a5bb2d42949f44b386c6f71d27c016a30e150f212286db343daae048c9864"

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
