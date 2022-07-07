cask "screenfocus" do
  version "1.1"
  sha256 "896d0c5a524fee171c4815154c72425761c44fb6720486eacd82afd1b11314c1"

  url "https://www.apptorium.com/public/products/screenfocus/releases/ScreenFocus-#{version}.zip"
  name "ScreenFocus"
  desc "Tool to manage multiple screens"
  homepage "https://www.apptorium.com/screenfocus"

  livecheck do
    url "https://www.apptorium.com/screenfocus/trial"
    regex(/href=.*?ScreenFocus[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "ScreenFocus.app"

  zap trash: [
    "~/Library/Application Support/ScreenFocus",
    "~/Library/Application Support/com.apptorium.ScreenFocus-dm",
    "~/Library/Caches/com.apptorium.ScreenFocus-dm",
    "~/Library/Preferences/com.apptorium.ScreenFocus-dm.plist",
    "/Users/Shared/ScreenFocus",
  ]
end
