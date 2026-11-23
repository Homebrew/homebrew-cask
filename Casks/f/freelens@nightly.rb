cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1-0-nightly-2026-11-23"
  sha256 arm:   "95db9f099f268b6e41d123afe8e3b7f69b3dc473d68b37a596e85c82cec6e94e",
         intel: "b7800c8755e3df5086a6a78675b76e9f8186298c7e5f414f36182430d0bd42f5"

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
