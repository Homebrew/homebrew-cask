cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1-0-nightly-2026-11-17"
  sha256 arm:   "0601522c27a58ee71db02dbe991561967c0df66d724b617fc69b59690948d525",
         intel: "2561612abbc4a38bcada60de8896df39e7f0a3b5c564a737378f7bffcda98bfd"

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
