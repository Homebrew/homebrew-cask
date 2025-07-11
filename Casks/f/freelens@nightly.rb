cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-0-nightly-2025-07-11"
  sha256 arm:   "3c4b1c99e80eb0395316a173fc101cc7618c7ff4a16866f5b2f18b51ea9e9561",
         intel: "adbc6138fc6ffe2951209ee2c87bd9a9ab9f6a9e5654a25419714adc193287f3"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
