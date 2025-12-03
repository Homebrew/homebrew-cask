cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0"
  sha256 arm:   "53a3a3fa2a7fb2b5737f2134e2b252660680b48b7bcb45fc9cb807788bc1fd2a",
         intel: "aad7ce7f5e20987e07000fd467ce90475b00ef99735d56a858d6f437e98958fc"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
