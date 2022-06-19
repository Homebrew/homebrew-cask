cask "sleek" do
  version "1.2.1"
  sha256 "e7ff92653d1a85b3484d8204a02ca2e49fd44792085513c13accd2ba14475419"

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
