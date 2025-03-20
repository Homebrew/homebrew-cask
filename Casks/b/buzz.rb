cask "buzz" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "8bc210ead8ff0f694246f772ff48b8f0d777d4c5df2594cac57937a5fc0f61d1",
         intel: "72bd99f2e80fcbb4b29e440bc0e7a471472b14a68d86a65c7fa0857c6453ef03"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac-#{arch}.dmg"
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
