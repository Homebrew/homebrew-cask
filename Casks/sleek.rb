cask "sleek" do
  version "1.1.3"
  sha256 "f70f18ef3823287397eb29ea2606bd90bfeca508597b34db9d3abf6c827c17c3"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac.dmg"
  name "sleek"
  desc "Todo app based on todo.txt"
  homepage "https://github.com/ransome1/sleek"

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/RobinAhle.sleektodomanager.plist",
    "~/Library/Saved Application State/RobinAhle.sleektodomanager.savedState",
  ]
end
