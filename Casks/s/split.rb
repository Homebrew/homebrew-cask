cask "split" do
  version "1.1.17,32"
  sha256 "df279c2c731c77090508e654d85001ea22ddd531fbf50c375b3fc2e778481d44"

  url "https://splitformac.com/api/updates/files/Split-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Split"
  desc "Arrange and resize paired windows"
  homepage "https://splitformac.com/"

  livecheck do
    url "https://splitformac.com/api/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Split.app"

  zap trash: [
    "~/Library/Application Support/Split",
    "~/Library/Caches/com.lukepc.split",
    "~/Library/HTTPStorages/com.lukepc.split",
    "~/Library/Preferences/com.lukepc.split.plist",
  ]
end
