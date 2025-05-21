cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.19"
  sha256 arm:   "cdb95e4916e9518eb25dccb25a567e9ed4006e2c5bb2ba29475071cc3944ba2e",
         intel: "79173431999b4e8eb852403205f806c5b70364edf5b7bae27cb89485c0ea7c2d"

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
