cask "gg" do
  version "0.37.2"
  sha256 "7b688dd1ce210b5e0f4389c6d185696a8d236ac1bde646b9fd942393f715040c"

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
