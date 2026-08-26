cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-0-nightly-2026-08-26"
  sha256 arm:   "85ad7b7ae6813c6e6c92870eb443d9a6c3b18e39b022e4792cf93ee3408721aa",
         intel: "3c8071556c230ad4ecb4dab871b68deda902a128bcc0057ad4e3c6c0f682d33a"

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
