cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.15"
  sha256  arm:   "fcc407071edba351969e0e493c46bccf231d588a6540a4107dff1dfeebe5d97d",
          intel: "e1ad5322a608915125cfb27fc9716a390e7d09a41bb766f48233e30190ac85d6"

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
