cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.3-0-nightly-2025-08-17"
  sha256 arm:   "df5a89a67ea2c9fe9d6f4bc976b4ea99b0c6d6c7ec2b53909d19f7c533266f3f",
         intel: "7ce5f20db87b5f7410c101fbc7fe7e71aa0c66860fd8be5fa669d940b9e77d2a"

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
