cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "ba5474d541c02dbc0abd69b7a0afcb82fd9bff21d4d5ecc53d3313818c44013b",
         intel: "b5b445b144e7f08e4fb4838dac9f873dd62890d17d3b0d62dfa20fd01f5a7ed0"

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Folo/"
  name "Folo"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+(?:[._-]beta[._-]?\d+)?)$}i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "folo@nightly"
  depends_on macos: ">= :monterey"

  app "Folo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Folo",
    "~/Library/Logs/Folo",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
