cask "sleek" do
  version "1.0.9"
  sha256 "05214e7770109beeccede7bf2909c0ecf2bb4f2c99debe93edb9d524a93b7f9d"

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
