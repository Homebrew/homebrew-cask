cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.25.1"
  sha256 arm:   "88d2515aa2b7c53e590f6291038e895a1f33bdfaec5bde748e0b1df1e3e0d53f",
         intel: "48c21f8d702907b8627b3f4cf939b2447b09e8ed1f06d0dbe8f5a91451a76471"

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
