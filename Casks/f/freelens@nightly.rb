cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.1-0-nightly-2025-07-17"
  sha256 arm:   "4be8d7d1ec43d44969080928f42e858ccdfe3acc03dd24a4f7355358826e3c13",
         intel: "2cbf91803d523041455fd9dea6b9245220c34d59d87ede5d68d7682ceb4f727c"

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
