cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.26.0"
  sha256 arm:   "6f645edb9d54a096cea780cae83b4a195b0355aceb4fe45a76b1df40d7df5bdc",
         intel: "48022fe5afddb3eca9dd08e0bbb7cdde1db8d7d937a6b934f42744d16d4eaa3d"

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
