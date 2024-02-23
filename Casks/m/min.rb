cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.31.2"
  sha256 arm:   "b08b75e22a0009b28237ba6ed04d3747faa9cbd5f973d6aad715b89af4170ac2",
         intel: "5bd06adf8f02a86f3d5407eeb7c8a1a790cdc3a571a9cbf6c92da48d066ec06b"

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
