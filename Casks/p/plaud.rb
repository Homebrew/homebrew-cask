cask "plaud" do
  arch arm: "-arm64"

  version "1.1.1"
  sha256 arm:   "389ed8a6aa010453b75b766b2276566cfae9034988ae9a5f29214f0a115c02f0",
         intel: "ea6660f4e3515c40db0551bd020fd37eb07a6e91b84a25cb1429aa6a7434e41c"

  url "https://client-download.plaud.ai/desktop/v#{version.major}/Plaud-#{version}#{arch}.dmg"
  name "Plaud"
  desc "AI note-taking for online meetings, phone calls, and in-person conversations"
  homepage "https://www.plaud.ai/"

  livecheck do
    url "https://plaud-web-download-prod.s3.amazonaws.com/desktop/v#{version.major}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Plaud.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.plaud.desktop.plaud.sfl*",
    "~/Library/Application Support/Plaud",
    "~/Library/Caches/ai.plaud.desktop.plaud.helper.Renderer",
    "~/Library/HTTPStorages/ai.plaud.desktop.plaud.helper.Renderer",
    "~/Library/Preferences/ai.plaud.desktop.plaud.helper.Renderer-com.liteav.storage.global.plist",
    "~/Library/Preferences/ai.plaud.desktop.plaud.plist",
  ]
end
