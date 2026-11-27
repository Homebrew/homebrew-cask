cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1-0-nightly-2026-11-27"
  sha256 arm:   "16020f8d1b120d16f0e7642c6ae81d721a0013dcde5ab0ef0418748a0583e1eb",
         intel: "8b38ae6ef9637eee4f02c55030889f552bdd70bc61107329e8b6d4d3f805a162"

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
