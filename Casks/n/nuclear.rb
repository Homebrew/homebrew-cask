cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.47"
  sha256 arm:   "9493e79b37cc72e8f7a888f7b52a0fa88ddc0fb20256ac749e8821d004eebc07",
         intel: "458c2aa169758a1519f5e7dcd5a66fb5be9c3394199924bc299ad34b9fae0fca"

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
