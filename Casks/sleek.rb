cask "sleek" do
  version "1.1.0"
  sha256 "0411333982236cb9346a827c7e2536054e9301a947f7bdd1d61b3541208577f0"

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
