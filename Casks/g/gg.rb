cask "gg" do
  version "0.27.0"
  sha256 "56a9973d612c513548bb20ad7ecfb9f7991199139823b0c661f944f55d5873d4"

  url "https://github.com/gulbanana/gg/releases/download/v#{version}/gg_#{version}_universal.dmg"
  name "GG"
  desc "GUI for Jujutsu"
  homepage "https://github.com/gulbanana/gg"

  depends_on macos: ">= :high_sierra"

  app "gg.app"

  zap trash: [
    "~/Library/Application Support/au.gulbanana.gg",
    "~/Library/Caches/au.gulbanana.gg",
    "~/Library/Logs/au.gulbanana.gg",
    "~/Library/Preferences/au.gulbanana.gg.plist",
    "~/Library/WebKit/au.gulbanana.gg",
  ]
end
