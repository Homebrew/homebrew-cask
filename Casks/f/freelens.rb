cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2"
  sha256 arm:   "84e73a2bd2a504d448710bcad2bf6492bb03bf67cc872e69cb4123148418d61e",
         intel: "0e467116d107469d2f7dd6f8897916c237f73dde0f6a110f49a7b87087e97db2"

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
