cask "latest" do
  version "0.6.3"
  sha256 "73af1699f62547204352914995747237d25e7701f88d8a936a25219f605c0c78"

  url "https://max.codes/latest/Latest.zip"
  appcast "https://max.codes/latest/update.xml"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Latest.app"

  zap trash: [
    "~/Library/Caches/com.max-langer.Latest",
    "~/Library/Cookies/com.max-langer.Latest.binarycookies",
    "~/Library/Preferences/com.max-langer.Latest.plist",
    "~/Library/Saved Application State/com.max-langer.Latest.savedState",
  ]
end
