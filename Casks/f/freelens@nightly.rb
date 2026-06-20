cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1-0-nightly-2026-06-20"
  sha256 arm:   "091200da217b65c2b5f9cadb79868b67f0f4b1373e3f70c7c79bb180c3f4ab7b",
         intel: "470d39b37b5418f5002b67a6942bcd478052aa54f2361c88b74b2f0366e89d9c"

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
