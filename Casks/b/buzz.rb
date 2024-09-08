cask "buzz" do
  version "1.1.0"
  sha256 "9ca6ca83d2b3b2cdf9b01ae396c6bf990530b5c9531de4a1793999e64d83e071"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac.dmg"
  name "Buzz"
  desc "Transcribes and translates audio"
  homepage "https://github.com/chidiwilliams/buzz"

  deprecate! date: "2024-04-03", because: :moved_to_mas

  app "Buzz.app"

  zap trash: [
    "~/Library/Caches/Buzz",
    "~/Library/Logs/Buzz",
    "~/Library/Preferences/com.chidiwilliams.buzz.plist",
    "~/Library/Saved Application State/com.chidiwilliams.buzz.savedState",
  ]
end
