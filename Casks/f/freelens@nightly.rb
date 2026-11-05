cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1-0-nightly-2026-11-05"
  sha256 arm:   "4f387378b1550d07b28113a4aac4c499526ba4eb8121c7e97434d5f0fdc7ff5a",
         intel: "95417a156c6faceede61052d26c660681ce3381fe9dd565cb96eb4555858f48d"

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
