cask "screenfocus" do
  version "1.0.1"
  sha256 "2b64e3b66b3b105a01f801e6fa1ec1aa66ee1804e4a3e1c427b66c830e0151ce"

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
