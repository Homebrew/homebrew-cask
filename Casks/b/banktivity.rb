cask "banktivity" do
  version "9.2.2,261"
  sha256 "fefab3a34e1c10d45b5e04702196d3551a9f07dd168ae4983f3205af48ee6402"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "iggsoft.com/banktivity/"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  livecheck do
    url "https://www.banktivity.com/download.php"
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Banktivity.app"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end
