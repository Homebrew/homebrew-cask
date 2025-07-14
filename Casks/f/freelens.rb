cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0"
  sha256 arm:   "d5554bd785fdbba988848d48fd8105ec84744a3f17a6d2cd774e0c0e288cef6c",
         intel: "86173dc30b89356ced6e09ab58da1f6dc1d34c0933b6c710f76917eb85509049"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
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
