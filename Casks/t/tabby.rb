cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.229"
  sha256 arm:   "d273ee0ffd53ec45fa3d96b01614ac23c349322986eb0cf08e0249737124aac7",
         intel: "69930883c9c823e53ede1665d5b9e5f4c8316063a746fbab1107b8332a40e15f"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.tabby.sfl*",
    "~/Library/Application Support/tabby",
    "~/Library/Caches/org.tabby",
    "~/Library/Caches/org.tabby.ShipIt",
    "~/Library/HTTPStorages/org.tabby",
    "~/Library/Preferences/ByHost/org.tabby.ShipIt.*.plist",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
    "~/Library/Services/Open Tabby here.workflow",
    "~/Library/Services/Paste path into Tabby.workflow",
  ]
end
