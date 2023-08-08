cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.28.1"
  sha256 arm:   "812b9f44d8d705b6293eb5881dcec80fe43d378a18b7fd4f200ac0e53bc79e5f",
         intel: "425d0536caf4eb357ef7c0c961a547092e896f3e3d3129111155f5c00cd6302f"

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
