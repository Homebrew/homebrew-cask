cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.233"
  sha256 arm:   "cd0efe82a1853ddaaf0ea3f151c92b81479c473710abf4e3b49fb75cb8bf1c8c",
         intel: "0ce51d0993e2044a2e3adc8fd7120d279b36f7371d2018778f36c06fcc7a11a5"

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
  depends_on macos: :monterey

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
