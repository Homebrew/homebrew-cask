cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1-0-nightly-2026-11-15"
  sha256 arm:   "b70dc8f1cceeaeefa6da03bfcab726697f506d3c64b150684d4834bf6438477e",
         intel: "20c8e1d9c23df4a208c1d3a50c0a8960d56bcfda6711004a26b715206acb4c79"

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
