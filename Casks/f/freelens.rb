cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3"
  sha256 arm:   "ae33e11d5db858da1f64ae2c4f7ca3835786780bcb2af02e55fe756f08900419",
         intel: "d9b462114b9587ca8daaf1ce62529de7d3ec65e42f39628edfc10ecbd69c3175"

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
