cask "plaud" do
  arch arm: "-arm64"

  version "1.3.10"
  sha256 arm:   "cf67710d0e33c135f53f1d13daa96b1276db9db95d4bcdc7893664bc78b43cbb",
         intel: "89940044e5fb437295b4f33198439573c250f35ee96a3cb92bd46c66517f2e04"

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
