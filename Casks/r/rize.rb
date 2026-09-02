cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "3.0.45"
  sha256 arm:   "e632dcf1155811f907a044463a0317be6ed6fcf37ad4ea8392a3d8c5cb5beb42",
         intel: "2b23fb8915f3c0b2c30a3a78568b59b8de2cc2045fc960e9eb971ffe1a4cf441"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.rize.sfl*",
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end
