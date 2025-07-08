cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-0-nightly-2025-07-08"
  sha256 arm:   "4940545023618d2ff91208a6f5ce608291d4c3927a84b5940cc94505cbe0df4f",
         intel: "4afcea3ba97236eef04b6060c97362b99e3c86f27766bd04dcf519daf2443df8"

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
