cask "masscode" do
  arch arm: "-arm64"

  version "6.4.0"
  sha256 arm:   "e2e4262153343d954a0887128bc0c6dbe7895fc1ef17984df4572bfd31e885f7",
         intel: "ce5016e0ac79aec6317d3dd6e41e51eb85af31eaad459346e5c493d836711d7f"

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
