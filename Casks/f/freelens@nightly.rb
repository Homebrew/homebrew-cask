cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1-0-nightly-2026-11-28"
  sha256 arm:   "56f3450cc1ae8d96a13f486ba50af379dc74f5178d15860f9af8667678ea038d",
         intel: "4ee5bef9c678dfe15b500f8bbbfb6c5d9ded65fbab9370af5a5db23ce09016eb"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :ventura

  app "Freelens.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freelens.freelens.sfl*",
        "~/Library/Application Support/Freelens",
        "~/Library/Logs/Freelens",
        "~/Library/Preferences/app.freelens.Freelens.plist",
        "~/Library/Saved Application State/app.freelens.Freelens.savedState",
      ],
      rmdir: "~/.freelens"
end
