cask "screenfocus" do
  version "1.1.23"
  sha256 "f7c2ff9ec616c2bc316ddc796b87fcc003926cf8b1c6d366bf05093cbb6e99d1"

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
