cask "gg" do
  version "0.38.0"
  sha256 "496abd22437cf43ce58624f088e841bc21579bffa7a6e6dffb4357f8e4d18a5a"

  url "https://github.com/gulbanana/gg/releases/download/v#{version}/gg_#{version}_universal.dmg"
  name "GG"
  desc "GUI for Jujutsu"
  homepage "https://github.com/gulbanana/gg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "gg.app"
  binary "#{appdir}/gg.app/Contents/MacOS/gg"

  zap trash: [
    "~/Library/Application Support/au.gulbanana.gg",
    "~/Library/Caches/au.gulbanana.gg",
    "~/Library/Logs/au.gulbanana.gg",
    "~/Library/Preferences/au.gulbanana.gg.plist",
    "~/Library/WebKit/au.gulbanana.gg",
  ]
end
