cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-0-nightly-2025-11-28"
  sha256 arm:   "29c8a08231407a04a93eadcb5e67ccd797a10aec9bfd5c6ef9d670df443faec6",
         intel: "e05aa3353d8a134c3a4078ef99903475c904aef6a8b7967c90bd4014cb1b64fc"

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
