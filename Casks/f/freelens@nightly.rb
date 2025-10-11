cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2-0-nightly-2025-10-11"
  sha256 arm:   "902af560abc6a87308630c873a73f16b95a0d136ec0f844b87cee40e5b5e3c3d",
         intel: "39f5e4f48cbb7a298b1cc089dc9a540b1d1dc82e50cd6f9998d68a595623b5b3"

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
