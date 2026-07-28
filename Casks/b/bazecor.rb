cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "02dc5530079844bb78927a688db21761b921d3e0440b64efa5e1f94355b86eec",
         intel: "4723fb37dc19df62968c288fbdf42466db141b78325fa994892e23ab505763d1"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dygmalab.bazecor.sfl*",
    "~/Library/Logs/Bazecor",
    "~/Library/Preferences/com.dygmalab.bazecor.plist",
    "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
  ]
end
