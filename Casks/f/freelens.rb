cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1"
  sha256 arm:   "d04837c4113eca336f36396850024932963d87b89f815fb81b76be12f6d72fe4",
         intel: "257a8c6b0e4a96ba27ae9358354d18715c1175d1d1acafd8e5be4d137cb9040f"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
