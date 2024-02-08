cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.31.1"
  sha256 arm:   "d6e7ec82fc4c0500c4b7db872d63dde15148e64476ecdf3af8e38fc4f8c25c20",
         intel: "459a4781fca2d2fc51484526ceca0c63e7c9ec1fc0aedaf2f6283519a3875448"

  url "https://github.com/minbrowser/min/releases/download/v#{version}/min-v#{version}-mac-#{arch}.zip",
      verified: "github.com/minbrowser/min/"
  name "Min"
  desc "Minimal browser that protects privacy"
  homepage "https://minbrowser.github.io/min/"

  app "Min.app"

  zap trash: [
    "~/Library/Application Support/Min",
    "~/Library/Caches/Min",
    "~/Library/Saved Application State/com.electron.min.savedState",
  ]
end
