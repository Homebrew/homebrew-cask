cask "lobehub" do
  arch arm: "-arm64"

  version "2.2.18"
  sha256 arm:   "19b38db008998d4cd42600c2e412141f78b4c5d2d42de2c38e6a36fa90e3c9ab",
         intel: "a60be029f933c43afaf7deae7020db422d139fa469717eea91688a2f09fc90c0"

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
