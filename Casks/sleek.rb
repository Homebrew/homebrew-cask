cask "sleek" do
  version "1.2.8"
  sha256 "4b6b270a105257f0887e8c9a9b4078e44ded58f3c362ccbe822ca8ce219f84e6"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac.dmg"
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
    "~/Library/Preferences/RobinAhle.sleektodomanager.plist",
    "~/Library/Saved Application State/RobinAhle.sleektodomanager.savedState",
  ]
end
