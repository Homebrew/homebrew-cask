cask "min" do
  version "1.17.1"
  sha256 "fd392b2aed1b990e534f36948ce657892f77373d637a90789ba3f56e3932bf11"

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
