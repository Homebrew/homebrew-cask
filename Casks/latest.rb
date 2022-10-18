cask "latest" do
  version "0.8.3,820"
  sha256 "ecd8161f44719285b62e845bc60fbf1cfe93e9a571c8f8745971bfc69fd69551"

  url "https://max.codes/latest/#{version.csv.first}.zip"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  livecheck do
    url "https://max.codes/latest/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Latest.app"

  zap trash: [
    "~/Library/Caches/com.max-langer.Latest",
    "~/Library/Cookies/com.max-langer.Latest.binarycookies",
    "~/Library/Preferences/com.max-langer.Latest.plist",
    "~/Library/Saved Application State/com.max-langer.Latest.savedState",
  ]
end
