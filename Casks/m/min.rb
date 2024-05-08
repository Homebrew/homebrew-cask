cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.32.1"
  sha256 arm:   "02eddf536da721eea11f1fd035ac7e2e067d1868904df6ca9184fdc09082c182",
         intel: "b78ed297534b7fd5ff9f62dee8c66218a3c13eae4497103c06febbfe0d90e90c"

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
