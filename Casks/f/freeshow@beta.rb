cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.7-beta.2"
  sha256 arm:   "cb141ba21d66f6f6b3a03cca5755bc7947c5d2979e3a1f970e0172b290941f4b",
         intel: "95bacd0bdc4eeb7d0f9ed96052e325451edb268d390781ca7820f88222fb7678"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on :macos

  app "FreeShow.app"

  uninstall quit: "app.freeshow"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freeshow.sfl*",
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
