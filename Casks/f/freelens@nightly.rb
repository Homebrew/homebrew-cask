cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-0-nightly-2025-07-19"
  sha256 arm:   "318bf70a0ff6eddfef8322a41b5c72a801e4b2f4d3287131b98946738e8778b1",
         intel: "73ca32aba2b4e0504da0a4f64becb91d8635bd2a824df89082f3698805894566"

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
