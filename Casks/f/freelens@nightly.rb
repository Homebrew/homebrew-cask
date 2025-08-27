cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4-0-nightly-2025-08-27"
  sha256 arm:   "f2b84a29efbe7c6095de3f1656874c113df3eaf1dff03502b110b893c93e255d",
         intel: "03e5b36b53b6bb2ab75c8297ecd5396d4138e403c59ea6d12c1a65d8859f4815"

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
