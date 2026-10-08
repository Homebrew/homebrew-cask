cask "masscode" do
  arch arm: "-arm64"

  version "6.1.0"
  sha256 arm:   "9ca890c3ffe538b8e51bf42a681f4eaf7733f54df7c2776148cfeb434853d366",
         intel: "e0a792fcaeda42d198ff442ecbb96524124f2917f8d86c9077898ce547bfadbb"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg"
  name "massCode"
  desc "Developer workspace for code snippets, notes and HTTP requests"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "massCode.app"

  zap trash: [
        "~/.massCode",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.masscode.app.sfl*",
        "~/Library/Application Support/masscode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
