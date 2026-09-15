cask "masscode" do
  arch arm: "-arm64"

  version "5.12.0"
  sha256 arm:   "34402cc04fc956e9ec2113a3ee7aabe69880710e29117da43267c0f4284148e8",
         intel: "a497032fb329ffee0046de51f9fba198ccb8069000446609f6b3bac304ed1586"

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
