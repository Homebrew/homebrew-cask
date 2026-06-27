cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.2-0-nightly-2026-06-27"
  sha256 arm:   "97abafe13d8cd1fbefa8d8d3746e537ee28d9cceed603617fa564dc5cf3d33f8",
         intel: "a40b9d015fd7f7063d07558a306ce9fc5fcd3a85c9db5f6456d3c2109471a8f0"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
