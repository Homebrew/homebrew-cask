cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-0-nightly-2025-12-02"
  sha256 arm:   "c141dac0082eae67d5c07b9b1f928b6c814e108c80b36d8c6de9eb57efb02fc5",
         intel: "4aaa7609a163a923b63f301119884f698244ee50506064691cef9c6f18509a8a"

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
