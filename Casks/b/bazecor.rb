cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "84c2fb9db36fada8e441451dee54e026f2109263f2d2ea060c938fc2ac291234",
         intel: "abc93bc14bf344354064004bb22d2bf37c6bb5e24c3b7befae71f2507afb18b6"

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
