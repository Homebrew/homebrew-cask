cask "min" do
  version "1.16.1"
  sha256 "1f51be19010df1e6829354fce95791142a3c48a033cf1cb5eade862ed3d34143"

  # github.com/minbrowser/min/ was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
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
