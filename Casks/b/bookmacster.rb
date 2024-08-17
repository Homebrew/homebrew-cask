cask "bookmacster" do
  version "3.1.4"
  sha256 "cdcb3b3a7e9fd813c7280c99ae7a54582af08f38635ac87de295f0d08f3676b4"

  url "https://sheepsystems.com/bookmacster/BookMacster_#{version}.zip"
  name "BookMacster"
  desc "Bookmarks manager"
  homepage "https://sheepsystems.com/products/bookmacster.html"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://sheepsystems.com/bookmacster/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BookMacster.app"

  zap trash: [
    "~/Library/Application Support/BookMacster",
    "~/Library/Caches/com.sheepsystems.BookMacster",
    "~/Library/Preferences/com.sheepsystems.BookMacster.plist",
    "~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState",
  ]
end
