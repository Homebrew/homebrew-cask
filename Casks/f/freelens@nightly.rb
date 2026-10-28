cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-0-nightly-2026-10-28"
  sha256 arm:   "bedecc5e9e74076536ba30653ef0ec8c3d86b0b2c452c9d810e8ba39c43ddf03",
         intel: "a4e2201412747a65f433974b3ba4bb9a88eaa2e49171c4d0782f207814da19a1"

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
