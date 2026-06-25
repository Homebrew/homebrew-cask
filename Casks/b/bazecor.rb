cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "565036754a5225c615714a4c78a46cf38370e88d40eb8119dd2a0d771581ace8",
         intel: "78dd39a3a79967eaaa40796bcdb9a43ee90d34070dd193ab66a1b36402e84d55"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://dygma.com/pages/programmable-split-keyboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Bazecor.app"

  zap trash: [
    "~/Library/Application Support/BAZECOR",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
