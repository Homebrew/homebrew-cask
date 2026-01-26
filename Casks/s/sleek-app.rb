cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.22"
  sha256 arm:   "4dfa6de78f37c80c9005508e888396247b4c00e92b0def570eb6163e82345f8d",
         intel: "b1ee9f53ff0b766ad99175421098148733dd42cb9f907a767a8e5465fb8c0dc5"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
