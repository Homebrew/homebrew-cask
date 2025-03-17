cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.43"
  sha256 arm:   "5c223c24e4848b1ab6dddaa59cc745188004311f87d10e240afc04e918aea433",
         intel: "cfd13bc0a9a127eeb664a6248d7392edc9f15796cd0c42767f73bbb222923079"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
