cask "lunarbar" do
  arch arm: "-apple-silicon"

  version "1.10.1"
  sha256 arm:   "20bbb944baaf68e32a77f87cbfca908cfb3a1459d5f1d9bad50566725c42e37b",
         intel: "ffa5538fb5fd2eb669fad2570909751fcaeb8f717a45ec261ec06332ee4b35e3"

  url "https://github.com/LunarBar-app/LunarBar/releases/download/v#{version}/LunarBar-#{version}#{arch}.dmg"
  name "LunarBar"
  desc "Lunar calendar for menu bar"
  homepage "https://github.com/LunarBar-app/LunarBar"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :tahoe

  app "LunarBar.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.lunarbar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.lunarbar.sfl*",
    "~/Library/Containers/app.cyan.lunarbar",
    "~/Library/Saved Application State/app.cyan.lunarbar.savedState",
  ]
end
