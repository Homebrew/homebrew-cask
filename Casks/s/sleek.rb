cask "sleek" do
  version "2.0.6"
  sha512 "Agsu4aopA8io4Hc8bPf+2IKilQQZXLV8dOPiIE6TWqXfinD3P4Hs0OyUrejxuXCGsOcqW7JiqlFyzcNAXyQarw=="

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
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
