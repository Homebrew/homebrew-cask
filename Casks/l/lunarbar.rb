cask "lunarbar" do
  arch arm: "-apple-silicon"

  version "1.9.2"
  sha256 arm:   "183b8850fa274aca126fff12088add85c4191108a79c8948837753df45cae915",
         intel: "8768b88600992730690c3e8247c2cd9ed866f5d272eed9f820c8d1f420d25d0e"

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
