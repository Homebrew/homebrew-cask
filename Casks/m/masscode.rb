cask "masscode" do
  arch arm: "-arm64"

  version "5.8.0"
  sha256 arm:   "f699b7b4d66f0c649591e86983a9675a7af4504e6166f09b8925d781829346a1",
         intel: "bfbf888316becbbf69b17ce866624041d5d84202d17d349d1bd72542a4a55c02"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

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
