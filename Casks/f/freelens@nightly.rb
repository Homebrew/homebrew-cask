cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0-0-nightly-2026-11-20"
  sha256 arm:   "65102a093d1d26bf82ead76c5ce4ca47358b7117a8797e35e28e760a7b6af740",
         intel: "5cc30e3efd74d781dde5eec270c298f4b3f501fde91b8b4b1b3f18614e018353"

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
