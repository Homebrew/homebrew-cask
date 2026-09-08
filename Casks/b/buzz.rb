cask "buzz" do
  arch arm: "ARM64", intel: "X64"

  version "1.4.5"
  sha256 arm:   "db705058144c859e15d410e11a2b7a4b6faeb6994aab8e8101bd0bb5a05a06a8",
         intel: "14de05e47eabcf8a183baa2890b11eb2cde2369bfff992fd1375a8f051491e8d"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac-#{arch}.dmg"
  name "Buzz"
  desc "Transcribe and translate audio"
  homepage "https://github.com/chidiwilliams/buzz"

  auto_updates true
  conflicts_with cask: "block-buzz"
  depends_on macos: :big_sur

  app "Buzz.app"

  zap trash: [
    "~/Library/Caches/Buzz",
    "~/Library/Logs/Buzz",
    "~/Library/Preferences/com.chidiwilliams.buzz.plist",
    "~/Library/Saved Application State/com.chidiwilliams.buzz.savedState",
  ]
end
