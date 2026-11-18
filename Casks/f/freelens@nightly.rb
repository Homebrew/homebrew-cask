cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0-0-nightly-2026-11-18"
  sha256 arm:   "4a54a4cb19269418446ce5f03a8d74f826ac7b9c934233d92e5b0fa36c1158c1",
         intel: "0027e203afd659511bc4d1fef847e2fa0ccd41231e4fc4e8b0f8f0c9dae77175"

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
