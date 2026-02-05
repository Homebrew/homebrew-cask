cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.23"
  sha256 arm:   "03031dac0748c0121d0225960191bec05f3020b13cf44a67308a4eae5e6bef66",
         intel: "6ed1b19d83af2f8ff4958ba3854bbc7a0b03adf39a89a8c842a032b402e7aea4"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
