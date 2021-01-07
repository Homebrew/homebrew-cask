cask "min" do
  version "1.17.3"
  sha256 "3de80144ca75dca1f64a6ab06023c5d5459fa7cf0d2b4fd584ceff9afbdf8a9c"

  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip",
      verified: "github.com/minbrowser/min/"
  appcast "https://github.com/minbrowser/min/releases.atom"
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
