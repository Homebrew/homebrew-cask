cask "sleek" do
  version "1.1.9"
  sha256 "0c4eb74e37ded0585ccfd74b532d2b2b7a1179cca0213b9f2cbf7f27903c92fe"

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
