cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.28.0"
  sha256 arm:   "278cd8f5b99bcbefd616a126df16453de8fd43f2d0747af00c4af067723cfd45",
         intel: "aa9ee82200a5ce2ac343b5b9a41949f70e6b0de4ae3f047b0efce27510ccde90"

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
