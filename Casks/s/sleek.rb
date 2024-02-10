cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.9"
  sha256  arm:   "ad58b9fafa600488ea3027bbad0354ec2c7c46afc8759a6bb6912debc553329a",
          intel: "b9241e89449d5e40fb68e7770829577161de9919d83155d5e88e3adba49b92e6"

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
