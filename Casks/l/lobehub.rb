cask "lobehub" do
  arch arm: "-arm64"

  version "2.2.16"
  sha256 arm:   "e3a9e979f6ee48b0ea97f1de273a19c5af2c2bad68856441928af42c0ff0d3ef",
         intel: "85b52938041e475d2ddcf6f0bec1904a0de40cbbbb65b2b03e4575bd25c4e1ff"

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
