cask "min" do
  version "1.18.0"
  sha256 "34078bba39e679bf12c0a9a00ba7cc029bdccba0ff1a7f9ec23ba3ede235c12d"

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
