cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "3.0.183"
  sha256 arm:   "857ab9d87e8530c3ce7f5461cc75b0f558e404cb0a4b77465e61bb71adf841bc",
         intel: "78bcf52a1cb41c521e070242bbb17f7fd3ed7d8dea875a1be920970509880181"

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
