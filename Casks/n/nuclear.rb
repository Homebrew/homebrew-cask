cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.35"
  sha256 arm:   "e8fe79f5659069f885e680c257354ab8f855a2036cfcca2ac0ea3e419e104daf",
         intel: "3a4017d96b5361f6d5697f5e3eae2a254a45b2d3beab9c061865bd97df72e4c7"

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
