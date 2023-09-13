cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.29.0"
  sha256 arm:   "f9f95da94ff236f9f82e6b435a68e525610ce17a3c1655473ba3493fc5e5e7d4",
         intel: "1155cb722144952d576abe4c1605545854bbac98d8cd7db9f41a110025928430"

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
