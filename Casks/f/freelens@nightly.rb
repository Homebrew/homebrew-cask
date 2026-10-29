cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-nightly-2026-10-29"
  sha256 arm:   "4ff72e52c41e3bf3882e9b4d86bb7a0537277a7a591f0784d5a2029f0caee359",
         intel: "6149e72855ad6bab5f379ea89939c21c62fc4faf766710d897203465d8acdab5"

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
