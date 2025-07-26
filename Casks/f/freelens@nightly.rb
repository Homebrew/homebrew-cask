cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-nightly-2025-07-26"
  sha256 arm:   "1337a3991c3beee231b44d2df0edbbb00a19c333053b65f7c787434b28d5a4dd",
         intel: "cbe607fa0e57daad8c4e9e089739e68f91210da6c9e6f5a1a17f59a3f136e8e0"

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
