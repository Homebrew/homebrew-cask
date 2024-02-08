cask "banktivity" do
  version "9.2.4,264"
  sha256 "8bb2548000d53f3f9c9de1e8e2c62d8a820ab235f368f3ab1605708c88cefb17"

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
