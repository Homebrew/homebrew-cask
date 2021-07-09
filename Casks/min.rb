cask "min" do
  version "1.20.0"

  if Hardware::CPU.intel?
    sha256 "03fedef8fa72c38e7362ea4f31b815efde32dfb3254507d3cc24c1d36625d12e"

    url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip",
        verified: "github.com/minbrowser/min/"
  else
    sha256 "f299f8cfd841e4a43613a3dbbe953997d7082c67e58cb4fdbdd03bbb26ca4b36"

    url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-arm64.zip",
        verified: "github.com/minbrowser/min/"
  end

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
