cask "bookmacster" do
  version "3.3"
  sha256 "e6c169f45f0cdfa0c25045cea7db5c9bcb035cb4d78d8c6aec30a97a80842eca"

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
  conflicts_with cask: "bookmacster@beta"
  depends_on macos: ">= :big_sur"

  app "BookMacster.app"

  zap trash: [
    "~/Library/Application Support/BookMacster",
    "~/Library/Caches/com.sheepsystems.BookMacster",
    "~/Library/Preferences/com.sheepsystems.BookMacster.plist",
    "~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState",
  ]
end
