cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.3-0-nightly-2026-07-07"
  sha256 arm:   "14214eaa49943d29dae0c4e5d214bb4bfcbbb52dba59d95093f24fbf05774fae",
         intel: "11679490deca04141b6068f4416b4b2f4dc0b48bcdee45629efb48855fac6dbc"

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
