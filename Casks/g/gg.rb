cask "gg" do
  version "0.29.0"
  sha256 "b97d4dd29884b8f09a5501151ba1ebde7b2874ffaf51b59ed674bc3d30c8c082"

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
