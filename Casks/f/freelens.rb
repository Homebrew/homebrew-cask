cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.2"
  sha256 arm:   "36d9be540e7f33f9dba34abcf33e9dac9ffbb7f6c7918ad18a006d10762915a8",
         intel: "4560275dafebb8c03977fa1db1bed880b7ff55702be6772b5818ae007a395f86"

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
