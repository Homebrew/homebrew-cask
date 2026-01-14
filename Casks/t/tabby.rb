cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.230"
  sha256 arm:   "6d26d1f6a3f416aa0a7c2108d4155acae3677b4d00d369ef4028887412654c13",
         intel: "b7342e0c1dabda2ce7e919b913f31a6da2c51df4e2845a1123f67ee161767341"

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
