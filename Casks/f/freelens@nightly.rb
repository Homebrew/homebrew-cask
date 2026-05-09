cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.1-0-nightly-2026-05-09"
  sha256 arm:   "b6ff3704cc7bd18d49f85dba7986ba9e83df00b45d50c950dec539c3eafcc833",
         intel: "dbe404364ad1f5428cfaacfbd145255ed90b9f85a23850ff09f8eaaf244fc66b"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
