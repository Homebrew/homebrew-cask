cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.4-0-nightly-2026-07-09"
  sha256 arm:   "acf353484aa65de64035197475423876e37a5d603347143e66762f341e1d17f5",
         intel: "b691f3540f89baf4eec9d8032e044133292fcfe6716b65000c8e04274e13bef9"

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
