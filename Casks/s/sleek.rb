cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.18"
  sha256  arm:   "5536405906da9aacd91083c02833f7849b771bb85c298d5aaee0879204f3b3ec",
          intel: "77be79770a67ba3f070e61f8fe017a09cd302d72c2aa97167863feeb0b83d5e3"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
