cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3-0-nightly-2026-07-02"
  sha256 arm:   "74c7dec5623f9ff32330e151782ac15c9a09aa2489f4c0f16416351b3c49dba1",
         intel: "09ea409371c72e8aaef6859504835cdaeba6331b0967411c96dc590dbb742ab3"

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
