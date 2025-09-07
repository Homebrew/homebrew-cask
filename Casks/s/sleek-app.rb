cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.21"
  sha256 arm:   "09e5fc699dfb11ea7d56959eb2af11ed5cc244706d53ecf349214c9fedd44067",
         intel: "2d488494e321f503a0fd2538420f1468bc29e8fa19c5f0d5f883669f2cf12430"

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
