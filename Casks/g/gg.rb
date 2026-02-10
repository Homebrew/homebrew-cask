cask "gg" do
  version "0.38.2"
  sha256 "29e2c7d08ebee59bede13c22774d6059ba82c7b7148907acc0dfa379ad68f5b3"

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
