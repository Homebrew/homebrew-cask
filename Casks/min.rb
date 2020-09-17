cask "min" do
  version "1.16.0"
  sha256 "71873233107c5796a61d79629c0786287dcb8bc8832e3d05ff5d31224e4141c5"

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
