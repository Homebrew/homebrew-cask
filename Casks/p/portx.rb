cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.11,10.63"
  sha256 arm:   "74B72A370BD7D6E0F3B71AE080C3D5C4D98B2670E89F1C8030629123BC73DA1E",
         intel: "71E62760B379D0B4238B2591DD255273ACCCF356E196E83D369B3943E1D46CEA"

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
