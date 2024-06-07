cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.14"
  sha256  arm:   "1fe41e6e95f4ae3024fa09ddfb4deb7aa73210fd46daba0d10b33a4ad73f062b",
          intel: "7f998c4916be800a1a90ecbd4d265e00ba82ca518b7749d424887ca3e2d602ba"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
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
