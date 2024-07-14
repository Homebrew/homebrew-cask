cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.31"
  sha256 arm:   "0618fbe8dff0dc3ab862dcc3afe93e76bb34afa073b0440c956778bfaa699841",
         intel: "2679bb823ce9043d3685c0d6323afec3be9e91aaa5a3a898c5b65309e34c8240"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
