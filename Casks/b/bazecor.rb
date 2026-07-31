cask "bazecor" do
  arch arm: "arm64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "55699405c2e2572cacc48db2fe141a421b052b26b15ad5b9df3ba9be1ee9cad6",
         intel: "2a9b1377b7be417c14d1499d2e152e467dbbc26e0339fac14ff6f0cfa4b011ac"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.dmg",
      verified: "github.com/Dygmalab/Bazecor/"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://github.com/Dygmalab/Bazecor"

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
