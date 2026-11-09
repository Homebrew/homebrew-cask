cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1-0-nightly-2026-11-09"
  sha256 arm:   "eef38f07c4de3060e67158b566d3272fb48acd0dc8a34e37fb96975239f0531b",
         intel: "5f28059b21af9ded82e1520fcc37732b726d8543a3ae92793305d7f7d3dcd275"

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
