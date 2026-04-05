cask "plaud" do
  arch arm: "-arm64"

  version "1.1.3"
  sha256 arm:   "715406b5afc3694422e82a0e903f4544567ca8ba065bd40a242af700f16796e3",
         intel: "1033efb4cf6f0e548f49e4c439535e94212d64c1fcd089bc34b52298353d66da"

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
