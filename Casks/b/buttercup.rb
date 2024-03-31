cask "buttercup" do
  version "2.26.5"
  sha256 "f0f86db5e70c17d0a4b8690b627111eccce30e69fcf9d9138ab26e6fc4138f46"

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
