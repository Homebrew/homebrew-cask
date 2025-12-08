cask "gg" do
  version "0.36.0"
  sha256 "a1d5d850b476f69c7bfb3103c959fd3c20cc04cb213139f8a66324c33cab17a8"

  url "https://github.com/gulbanana/gg/releases/download/v#{version}/gg_#{version}_universal.dmg"
  name "GG"
  desc "GUI for Jujutsu"
  homepage "https://github.com/gulbanana/gg"

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
