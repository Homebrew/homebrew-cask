cask "bookmacster" do
  version "3.0.8"
  sha256 "b743b550c4fa3d7667823bfad5052dc636ec0e3cf2ac49f334d8ce26c0bb0cb6"

  url "https://sheepsystems.com/bookmacster/BookMacster_#{version}.zip"
  name "BookMacster"
  desc "Bookmarks manager"
  homepage "https://sheepsystems.com/products/bookmacster.html"

  livecheck do
    url "https://sheepsystems.com/bookmacster/appcast.xml"
    strategy :sparkle
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
