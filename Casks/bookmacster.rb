cask "bookmacster" do
  version "3.0"
  sha256 :no_check

  url "https://sheepsystems.com/bookmacster/BookMacster.zip"
  name "BookMacster"
  desc "Bookmarks manager"
  homepage "https://sheepsystems.com/products/bookmacster.html"

  livecheck do
    url "https://sheepsystems.com/bookmacster/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "BookMacster.app"

  zap trash: [
    "~/Library/Application Support/BookMacster",
    "~/Library/Caches/com.sheepsystems.BookMacster",
    "~/Library/Preferences/com.sheepsystems.BookMacster.plist",
    "~/Library/Saved Application State/com.sheepsystems.BookMacster.savedState",
  ]
end
