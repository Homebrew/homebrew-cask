cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.2"
  sha256 arm:   "5e7231705af647688bcf030de5668b59cd9cab7103999d108d23ef79bd69a613",
         intel: "5e0dc79239d208c514fe3319fff4dfd06ebf076a09fad6db62e63d594c651ba0"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :high_sierra"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
