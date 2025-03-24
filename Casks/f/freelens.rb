cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.1"
  sha256 arm:   "edcfc7ed74e25aa6b5f4bac3f69c2264b1f2f5772bb9d695c12fed1aee7aded8",
         intel: "2ebf58af86daa2e16161f7a76924ff48e1030302166fee143fe9b94bf9c7a88f"

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
