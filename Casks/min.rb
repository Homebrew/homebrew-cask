cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.27.0"
  sha256 arm:   "c1c16388d88250afbc6a1cbcd4eca4b82572871342639a82bbff405f3777497d",
         intel: "77d7a59338aeb84d25e458a5a8f477d716b95fa7bea0d9f5adfb427451625215"

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
