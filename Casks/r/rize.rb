cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "3.0.149"
  sha256 arm:   "cb26489bc7e8de0c4aea888d6a9395219aa47e49acbaed7483c528ac969e21e1",
         intel: "2a4fa82d02e3b86116bdb46b726678e246ec91dc41a4af5478c8e56b4ee34ebb"

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
