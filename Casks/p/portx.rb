cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.12,10.64"
  sha256 arm:   "FEF969F88CAECFDCB5101BD12C4FCA0983A99578CECDFCB79BE54E87599E7341",
         intel: "AD2E5049DED01F6621B69B8D598ED7341BFFF517C64DB6F67A46003B06711BFA"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.netsarang.portx.sfl*",
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
    "~/Library/Preferences/com.netsarang.portx.plist",
    "~/Library/Saved Application State/com.netsarang.portx.savedState",
  ]
end
