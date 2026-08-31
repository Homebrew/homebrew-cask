cask "lobehub" do
  arch arm: "-arm64"

  version "2.2.15"
  sha256 arm:   "195c372493c56f5d112a41cabdcfbcd27971ed1bbad83bc154e46249ed458b2c",
         intel: "bccad3c3987db6e3a80254bc930faf527cf0b420e7cf67093ec724ed3b995cf1"

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
