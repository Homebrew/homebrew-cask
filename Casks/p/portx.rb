cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.10,10.62"
  sha256 arm:   "E10D437D265C5F75261DE52B26DE3B3AF50D92D3EBE35B306CC8B5C37FF64B15",
         intel: "C013F46E6C94E2C2C0C8FC02F53F53A7821D75FC3EA62D7F6331AB21F446BCA7"

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
