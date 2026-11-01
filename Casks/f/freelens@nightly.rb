cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1-0-nightly-2026-11-01"
  sha256 arm:   "5703159c6e50603c23b675f814b8008a65e8b5bd2ddbea78742dfb214a466fbd",
         intel: "030160ca5d8b9b09b4837c13eabe6a67952470c6e559ebc9339233c5e1e52b6f"

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
