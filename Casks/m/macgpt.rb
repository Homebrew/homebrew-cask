cask "macgpt" do
  version "3.17,132"
  sha256 "e21e89c132c721c1d2dc24c5070ae01da0b2dbaa5d370385fd2a66bb55338eff"

  url "https://pub-d87f3f7fc7ee4955b8c3afaad2b5d4ea.r2.dev/releases/MacGPT-#{version.csv.second}.zip",
      verified: "pub-d87f3f7fc7ee4955b8c3afaad2b5d4ea.r2.dev/releases/"
  name "MacGPT"
  desc "Menubar app for easy ChatGPT access with conversation and inline modes"
  homepage "https://www.macgpt.com/"

  livecheck do
    url "https://www.macgpt.com/sparkle/appcast.xml"
    strategy :sparkle
  end

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
