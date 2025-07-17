cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.1"
  sha256 arm:   "4676a55cf770bb0acc0c14bc10193b411913644c004f0a491e0686798810d023",
         intel: "4330e204e5c8128729161a1ee01f46478db1e539faf1662a46e1c5d77b536d31"

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
