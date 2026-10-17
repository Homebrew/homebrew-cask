cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "42a6a0830f6cbeb63eccce4ca00c88bbc6cee7070a8fa49c8ec7520eaa191cb9",
         intel: "2fff0171a353ef74e1bdb1d3cf54133ee018ebb29c89cea93ebc0bf9c3df3ef1"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
