cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-nightly-2025-08-09"
  sha256 arm:   "d7bf36c2b47e656a8273a64cec8caf888d7e89dedb0ca2ab3547866d13f53472",
         intel: "97b8729199c9b0e794e8a699630954862e2402d5ffb8bcd9e0921771ee98631b"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
