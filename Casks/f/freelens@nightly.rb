cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-0-nightly-2025-07-10"
  sha256 arm:   "6eccbe498c23ee8d793c07f9356984b1be574199cd0b4b428a51a594c270e4f8",
         intel: "36c3993b41a9a484f1a16f4c75c2eeff8120ab67253dd551db86bb4f8927e656"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
