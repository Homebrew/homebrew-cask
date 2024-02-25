cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.10"
  sha256  arm:   "03ee2deb22374a53db9db5aff4f7561f37a4034c74add189109991dbcbb7760e",
          intel: "2f15cf0aea3335791e0af6b1fb6c026019ee4e479afa0b241bbcd3e885e49c02"

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
