cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-nightly-2025-07-15"
  sha256 arm:   "d4a94ccba49576d37a1d5f6955c1aaecd864c44aaf4b72f40be6ffb16a27b220",
         intel: "f297ae2a37746caa6a5cff0e32d56b1acf0e7944dc223b94e03d7791ba2b77dd"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :big_sur"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
