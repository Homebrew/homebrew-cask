cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-0-nightly-2026-08-07"
  sha256 arm:   "04a1918b50bf7b4268fbfd7331f1f848f92b216cafb7408d2231aa0a24debb15",
         intel: "0c91b62bcce600da638dad83e9e19204e4a0ecf313301a2a96a3e7e24a7a384d"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :monterey

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
