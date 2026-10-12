cask "masscode" do
  arch arm: "-arm64"

  version "6.2.0"
  sha256 arm:   "9933de2b49f45d9685988efe0ed029b231593b84350c10cdae3c66f6161dd6ac",
         intel: "49b1b0fda59b15a042f2c1dc32fab11e4ff01bc9f9a11de3c5b362bc1340ec44"

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
