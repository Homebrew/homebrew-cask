cask "buzz" do
  arch arm: "ARM64", intel: "X64"

  version "1.4.4"
  sha256 arm:   "956d74ec3db341e04867a4dd727ed22fa8ec629762e505624dcce85a78eb94f8",
         intel: "514edaa47841069c9f8953bdb0f3619167ed7a19e93427ec35014a89828d2fbb"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac-#{arch}.dmg"
  name "Buzz"
  desc "Transcribe and translate audio"
  homepage "https://github.com/chidiwilliams/buzz"

  auto_updates true
  depends_on macos: :big_sur

  app "Buzz.app"

  zap trash: [
    "~/Library/Caches/Buzz",
    "~/Library/Logs/Buzz",
    "~/Library/Preferences/com.chidiwilliams.buzz.plist",
    "~/Library/Saved Application State/com.chidiwilliams.buzz.savedState",
  ]
end
