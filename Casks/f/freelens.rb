cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1"
  sha256 arm:   "e5dbacc2b8ae0e62fddad5ea2dc901847d9130f143a85446fd65bda183029466",
         intel: "048044690167cbf0efcebbec0b7f143e222a0456b150efc339541321eda02fe4"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
