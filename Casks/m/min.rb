cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.30.0"
  sha256 arm:   "e886225e6399648fcfd1d9352e3c2703cfa89bb1b361bda70cac0789c19d45bf",
         intel: "71eb42a20ab61fa6f91596408766db22fcb7a02bdc4acf1acacff01cd4bf2644"

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
