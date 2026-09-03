cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-0-nightly-2026-09-03"
  sha256 arm:   "dd4085216c62657b33bd548eadfca3d9132193c02200d2c0e83f0f0adb8b29a9",
         intel: "fa7a4bd3fed2b7fd8c94da56332b0e9602a1d01ebb2495a9cbabf25d2ec03d7e"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
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
