cask "plaud" do
  arch arm: "-arm64"

  version "1.0.10"
  sha256 arm:   "d116a54721434d33ee699407ce9818bcb6e510a9b4fd882d865d034731971ef5",
         intel: "7a5ae7b891f76d2f4bdf45d522ddc05574d809ef5baae3eeff55aed872d23416"

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
