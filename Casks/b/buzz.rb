cask "buzz" do
  version "0.8.4"
  sha256 "272c9010e23b7b1c47e6bf7db376238e7d2ab897efc1cb2ccfa4ea5ecd733feb"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac.dmg"
  name "Buzz"
  desc "Transcribes and translates audio"
  homepage "https://github.com/chidiwilliams/buzz"

  app "Buzz.app"

  zap trash: [
    "~/Library/Caches/Buzz",
    "~/Library/Logs/Buzz",
    "~/Library/Preferences/com.chidiwilliams.buzz.plist",
    "~/Library/Saved Application State/com.chidiwilliams.buzz.savedState",
  ]
end
