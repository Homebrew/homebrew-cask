cask "sleek" do
  version "1.1.2"
  sha256 "3de721a91b5e0ff670d174b4b9c5b1da395718b44a9e2a05148836e16804397f"

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
