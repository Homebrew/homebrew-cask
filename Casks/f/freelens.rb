cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0"
  sha256 arm:   "324485065b985f5cff0d4bf0eb2a604b838ba42a772174d5d038d51e84d56232",
         intel: "e8f954deed88ab1d422d6a9599eded4d1bcabce6fe53f26e5c6c8a91b8a78693"

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
