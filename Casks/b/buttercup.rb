cask "buttercup" do
  version "2.25.0"
  sha256 "0502a5edf6e12dae4b097de10ea90bd5b526a805c37a8d091d009ba5d6699ed7"

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
