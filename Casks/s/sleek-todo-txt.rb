cask "sleek-todo-txt" do
  arch arm: "arm64", intel: "x64"

  version "2.0.24"
  sha256 arm:   "3c8b91503d8c44529e2acf05f10c2297e7a1e788031d64f023353fb100c40470",
         intel: "b821a495dbe9b8743043222bc43c824bca10050d4d744c510e7055a816ed6bc4"

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
