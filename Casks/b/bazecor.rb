cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "0fad90b0f5f7baef6106138cfef3a6e0f1faa0daf268aae12d9883dd102d6f1a",
         intel: "149cecf163897d56dac084b3fae7f45f92be9654d9e1d9250f0c04161c5139aa"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
