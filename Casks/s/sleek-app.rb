cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.20"
  sha256 arm:   "795a166a6e5b67ff052f4cbe9b25c61336d165e5c6f1789c4fe6db771c6b7db6",
         intel: "ec0664a52cc455d196ed54ba5ba604fe51f385720349124ef4031496e106b32e"

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
