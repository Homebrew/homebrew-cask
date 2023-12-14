cask "buttercup" do
  version "2.24.3"
  sha256 "83a61f557445cc8a8d24326a64bca47a703fd170752f6a217f1aa1ef1db2c0d4"

  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-mac-x64-#{version}.dmg",
      verified: "github.com/buttercup/buttercup-desktop/"
  name "Buttercup"
  desc "Javascript Secrets Vault - Multi-Platform Desktop Application"
  homepage "https://buttercup.pw/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Buttercup.app"

  zap trash: [
    "~/Library/Application Support/Buttercup",
    "~/Library/Application Support/Buttercup-nodejs",
    "~/Library/Logs/Buttercup-nodejs",
    "~/Library/Preferences/Buttercup-nodejs",
    "~/Library/Preferences/pw.buttercup.desktop.plist",
    "~/Library/Saved Application State/pw.buttercup.desktop.savedState",
  ]
end
