cask "plaud" do
  arch arm: "-arm64"

  version "1.3.11"
  sha256 arm:   "1b6ed18b14123348e899f274a95dd3ad23af08fa5790445cbef3a9d360c6fef5",
         intel: "16d7853bbb1b4c7f8deea63fcdfa73409e510c4145394a065af98c206b4e7e5a"

  url "https://client-download.plaud.ai/desktop/v#{version.major}/Plaud-#{version}#{arch}.dmg"
  name "Plaud"
  desc "AI note-taking for online meetings, phone calls, and in-person conversations"
  homepage "https://www.plaud.ai/"

  livecheck do
    url "https://plaud-web-download-prod.s3.amazonaws.com/desktop/v#{version.major}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

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
