cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4"
  sha256 arm:   "72e7da728329d5f4f6fdad82c17725c1bb319f83d85817560b58d6f7b242c7dc",
         intel: "cfa53a161033eb2cef18c2cd3d36fdc495354ec7856c7eea97dd93d83472fdeb"

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
