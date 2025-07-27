cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-nightly-2025-07-27"
  sha256 arm:   "505850cb0b617414e43b97ae425e4cb0a306a36cbf03b313e80bd96b9dd62886",
         intel: "ef306c88e1722a6aab3d4dc519630be75fdb4d9be9eec4045222358c3053931d"

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
