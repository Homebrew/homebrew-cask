cask "reaper" do
  version "7.66"
  sha256 "23e9d9b5c3a1ce5ad7d312c907107a0c4d59b583603111eebad396e8c559b8c7"

  url "https://dlcf.reaper.fm/#{version.major}.x/reaper#{version.major_minor.no_dots}_universal.dmg"
  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  livecheck do
    url "https://www.cockos.com/reaper/latestversion/?p=osx_64"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "REAPER.app"

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Preferences/com.cockos.reaper.plist",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
  ]
end
