cask "sleek" do
  version "1.1.5"
  sha256 "3b074604e8c261499462f12a97818df9edf4dcbd1034d14611a72153f8dcb4da"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac.dmg"
  name "sleek"
  desc "Todo app based on todo.txt"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/RobinAhle.sleektodomanager.plist",
    "~/Library/Saved Application State/RobinAhle.sleektodomanager.savedState",
  ]
end
