cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-0-nightly-2026-06-15"
  sha256 arm:   "72a40826840a4d6e97fd2a50215f89c15f6be8844abd37b58fd21e16262647ed",
         intel: "e7f3ccc35cc22f6d6763cf283e8d97ee7c5c93ae27008f3c4881432cf8a355b8"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
