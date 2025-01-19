cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.16"
  sha256  arm:   "293cdfeab2adbf0474c64c40e829f870a782d37588a7b2d20f181e266b980add",
          intel: "53f9497c5e383b478c4ee2c7fedc24c6f23e44fca01d235c8e0c84cf41c32fd2"

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
