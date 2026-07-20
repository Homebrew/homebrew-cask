cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0,10.79"
  sha256 arm:   "FE0080499E07837EFCADC1D11FCE231D7383D7083ADD87E2CEB17F991A8CC7FE",
         intel: "A45759983EFDBAF48CA1C24B2E1F1DCD7528CD9FEB268E8530E63A560D63D8CF"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  depends_on :macos

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.netsarang.portx.sfl*",
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
    "~/Library/Preferences/com.netsarang.portx.plist",
    "~/Library/Saved Application State/com.netsarang.portx.savedState",
  ]
end
