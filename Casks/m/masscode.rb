cask "masscode" do
  arch arm: "-arm64"

  version "6.3.1"
  sha256 arm:   "450c4aa8de921827e47419937dc05136155bc92bfc23a42d629d2971ae1ddec7",
         intel: "102429996c49747dde256fbb00fc68e4ee7ccbe27b0323e5492afe2023bf8410"

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
