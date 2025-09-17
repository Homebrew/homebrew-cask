cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "bc590909dd22cff6e72b511ce9d9602e155ce5de52a1b686718bc1ce97ca25d8",
         intel: "5e198e3649c83937c509de7b01af1b8f96be0de3ffcbaec2429f8806ef490d58"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg",
      verified: "github.com/rize-io/lua/"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end
