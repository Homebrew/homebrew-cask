cask "bookmacster@beta" do
  version "3.3.6"
  sha256 "75bb595cd968aecc60b3a7dd819ea8dfdfbae3f631db3914bb7019a9213982a4"

  url "https://sheepsystems.com/bookmacster/BookMacster_#{version}.zip"
  name "BookMacster"
  desc "Bookmarks manager"
  homepage "https://sheepsystems.com/products/bookmacster.html"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://sheepsystems.com/bookmacster/beta/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  conflicts_with cask: "bookmacster"
  depends_on macos: ">= :big_sur"

  app "BookMacster.app"

  zap trash: [
    "~/Library/Application Support/BookMacster",
    "~/Library/Caches/com.sheepsystems.BookMacster",
    "~/Library/Preferences/com.sheepsystems.BookMacster.plist",
    "~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState",
  ]
end
