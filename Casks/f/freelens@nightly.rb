cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.4-0-nightly-2026-07-11"
  sha256 arm:   "84f002c848461187fe8da7a5de7196b6dc7d0d321073a2c719184af2efa9a327",
         intel: "8d89d2b1309a849b174a8a2796501e1c25bd88f0ae8aeed13268b22de34ca0bd"

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
