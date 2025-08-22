cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.226"
  sha256 arm:   "1b84af38f58f8c7d6060686023f9915e7e29e687472b7bac6a0c068219ff17c6",
         intel: "f6f96653cceba7953d85f172ff183ba5f731fdaa90abe53e57f2821bd77a792e"

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
  depends_on macos: ">= :big_sur"

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
