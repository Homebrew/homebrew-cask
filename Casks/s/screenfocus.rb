cask "screenfocus" do
  version "1.1.1"
  sha256 "4b4bafc62e0f17896c11b3683cff2dbc7f4dc68f0d46a32c817bf9a6eb254959"

  url "https://cdn.apptorium.com/products/screenfocus/releases/ScreenFocus-#{version}.zip"
  name "ScreenFocus"
  desc "Tool to manage multiple screens"
  homepage "https://www.apptorium.com/screenfocus"

  livecheck do
    url "https://www.apptorium.com/screenfocus/trial"
    regex(/href=.*?ScreenFocus[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :sierra"

  app "ScreenFocus.app"

  zap trash: [
    "/Users/Shared/ScreenFocus",
    "~/Library/Application Support/com.apptorium.ScreenFocus-dm",
    "~/Library/Application Support/ScreenFocus",
    "~/Library/Caches/com.apptorium.ScreenFocus-dm",
    "~/Library/Preferences/com.apptorium.ScreenFocus-dm.plist",
  ]
end
