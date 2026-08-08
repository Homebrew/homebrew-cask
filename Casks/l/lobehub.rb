cask "lobehub" do
  arch arm: "-arm64"

  version "2.2.13"
  sha256 arm:   "7ed20379e9331b256806a20960629ce5cdc2b8fd4d9501bf8207b5c248a19fc5",
         intel: "a80cef61a13206f802fa58816308b3202ace4c6a84f3e4bee05f9e0a69011328"

  url "https://github.com/lobehub/lobe-chat/releases/download/v#{version}/LobeHub-#{version}#{arch}-mac.zip"
  name "LobeHub"
  desc "AI chat framework"
  homepage "https://github.com/lobehub/lobe-chat"

  livecheck do
    url :url
    regex(/LobeHub[._-]v?(\d+(?:\.\d+)+)#{arch}[._-]mac\.zip/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        asset["browser_download_url"]&.[](regex, 1)
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "LobeHub.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop-beta.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop.sfl*",
    "~/Library/Application Support/LobeHub",
    "~/Library/Application Support/LobeHub-Beta",
    "~/Library/Logs/LobeHub",
    "~/Library/Logs/LobeHub-Beta",
    "~/Library/Preferences/com.lobehub.lobehub-desktop-beta.plist",
    "~/Library/Preferences/com.lobehub.lobehub-desktop.plist",
    "~/Library/Saved Application State/com.lobehub.lobehub-desktop.savedState",
  ]
end
