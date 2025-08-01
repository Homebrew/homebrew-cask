cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.2-nightly-2025-08-01"
  sha256 arm:   "114aadf8a2f15f8110bbb75839dccceee0a06b5976d0e2397bb77ea6afb2ece9",
         intel: "5685a1c751ffdf2a031a41649d774c18d37cbbe037c4f8e5743c09f3660b323a"

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
