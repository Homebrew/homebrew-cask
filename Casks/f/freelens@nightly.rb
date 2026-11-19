cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0-0-nightly-2026-11-19"
  sha256 arm:   "802fedd25f813719481e10d41de90f0c82f0c8a084d139842c949566517482fd",
         intel: "43ad3d3b92d1ffbe5304be5f58e8db32f7f1f2d62d9a3ef04da2edbe27a1f948"

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
