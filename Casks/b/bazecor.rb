cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.3.10"
  sha256 arm:   "77e4b471a29d329d41b5b262753b2de1747c833dbbd4521d61be06fb9ac66f3a",
         intel: "182b208bc32fb41b47b82a3f085bb3dfdf1083f4ff8e0ab99d7d599fda31e032"

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
