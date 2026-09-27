cask "masscode" do
  arch arm: "-arm64"

  version "6.0.0"
  sha256 arm:   "28e8e9833cf71d97ba10b9fbbdb68c35df047458ccdfaab9652512319a0161bc",
         intel: "b861062d72524ce417a22cfa47bc8c3c302a8ec8b7f43d783c61edfd7575913f"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg"
  name "massCode"
  desc "Code snippets manager for developers"
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
