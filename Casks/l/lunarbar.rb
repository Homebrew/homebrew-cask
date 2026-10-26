cask "lunarbar" do
  arch arm: "-apple-silicon"

  version "1.10.0"
  sha256 arm:   "caff81f93f07446d87d4f7c33e7f393d5d43bf3be2a68e3349e5a3ba1d49db7d",
         intel: "1e66325c3d0cd3dea40dfd52182923a6f5d78dab3bc557b6f5701e95f7bbad89"

  url "https://github.com/LunarBar-app/LunarBar/releases/download/v#{version}/LunarBar-#{version}#{arch}.dmg"
  name "LunarBar"
  desc "Lunar calendar for menu bar"
  homepage "https://github.com/LunarBar-app/LunarBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "LunarBar.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.lunarbar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.lunarbar.sfl*",
    "~/Library/Containers/app.cyan.lunarbar",
    "~/Library/Saved Application State/app.cyan.lunarbar.savedState",
  ]
end
