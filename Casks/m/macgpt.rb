cask "macgpt" do
  version "3.19,140"
  sha256 "a7d7b10b12b51653734f589f3109ae06ab01d62bc0646420a264596629a3658d"

  url "https://macwhisper-site.vercel.app/releases/macgpt/MacGPT-#{version.csv.second}.zip",
      verified: "macwhisper-site.vercel.app/releases/macgpt/"
  name "MacGPT"
  desc "Menubar app for easy ChatGPT access with conversation and inline modes"
  homepage "https://www.macgpt.com/"

  livecheck do
    url "https://www.macgpt.com/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MacGPT.app"

  zap trash: [
    "~/Library/Caches/com.goodsnooze.MenuGPT",
    "~/Library/HTTPStorages/com.goodsnooze.MenuGPT",
    "~/Library/HTTPStorages/com.goodsnooze.MenuGPT.binarycookies",
    "~/Library/Preferences/com.goodsnooze.MenuGPT.plist",
    "~/Library/Saved Application State/com.goodsnooze.MenuGPT.savedState",
    "~/Library/WebKit/com.goodsnooze.MenuGPT",
  ]
end
