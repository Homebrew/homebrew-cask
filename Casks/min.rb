cask "min" do
  version "1.18.1"
  sha256 "8c77f3e1e6ead2ceb019e39d4d5522f90b7c3ab28d4ccaa52600c30a8630031a"

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
