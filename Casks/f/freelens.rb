cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2"
  sha256 arm:   "a65125904c74fd8dd98eccff5ebbb7c1fc8fc089c4c1827d77c3f6adf8299495",
         intel: "fd475fa978ca596c0e0cd23491f10a3760e318fd95d54944e19ed18d518bd1cf"

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
