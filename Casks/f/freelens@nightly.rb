cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1-0-nightly-2026-11-25"
  sha256 arm:   "05a1e05325075714768a4de254cb4805606a0dd7172a9b2109d611d8e1b94826",
         intel: "e8c3545c20b7024d6de2261d774876bb5246a6c8b3f7e48967001a02b71a104f"

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
