cask "lunarbar" do
  arch arm: "-apple-silicon"

  version "1.9.1"
  sha256 arm:   "c7b61c9f73021689bdedd357c359e9f6767cd29a7560e1777a6ab2bc55fe74df",
         intel: "06a978706e081a90180f868f52fe3614ea98e97c32014f229dff550955f2eae3"

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
