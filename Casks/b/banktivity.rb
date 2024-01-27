cask "banktivity" do
  version "9.2.3,262"
  sha256 "78477e60b663f3f38c07ab9fa0715655de0a22c29d86d6ac5da38a13d88aaf08"

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
