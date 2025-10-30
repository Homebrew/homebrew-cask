cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2-0-nightly-2025-10-30"
  sha256 arm:   "ba5d984883d2b33341c5ea908c18f598fe5eaf4ceede8955b071f16a33a84348",
         intel: "54919ab2a1b4474371fe7049392e6b504f06f239df0514fd9a00c94a673703b3"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
