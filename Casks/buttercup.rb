cask "buttercup" do
  version "2.20.2"
  sha256 "e38fa80fb8c3b9712c38de17e88f64aad404027cab3333f1ad21fffcf30c13b5"

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
