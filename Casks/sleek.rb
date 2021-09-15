cask "sleek" do
  version "1.1.1"
  sha256 "9241c85c7b4fea7fabb56230297e75c28b2148758e4f47129c5a9cab948134fb"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac.dmg"
  name "sleek"
  desc "Todo app based on todo.txt"
  homepage "https://github.com/ransome1/sleek"

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Saved Application State/RobinAhle.sleektodomanager.savedState",
    "~/Library/Preferences/RobinAhle.sleektodomanager.plist",
  ]
end
