cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.1"
  sha256 arm:   "404bc1b41957d024f47c9194db1718cceff7a4a82dd4b1d88d54bddae96c1574",
         intel: "4c13a1ea0256897f22b49afb450e82c680f6f69fd9952ffd25cc8f89a9ad0c53"

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
