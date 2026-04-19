cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2-0-nightly-2026-04-19"
  sha256 arm:   "dd80f9f03d1ea66e1146b6c95ffb8cf9d38685a7f98ce97ba8a521e7c001a3af",
         intel: "b2789c70056a8c4a94656c7c40f17e871202375ab347fd6b6b59276a7a39c0df"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: ">= :monterey"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
