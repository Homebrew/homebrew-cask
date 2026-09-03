cask "banktivity" do
  version "10.1.0,429"
  sha256 "2088ece86d1a0785294f540eff18fd47763446c8e87b4cda20ee2965a5f250a5"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version.csv.first}-#{version.csv.second}.dmg"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  livecheck do
    url "https://www.iggsoft.com/banktivity/banktivity#{version.major}-versions-feed.json"
    strategy :json do |json|
      json["Banktivity"]&.map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  depends_on macos: :monterey

  app "Banktivity.app"

  uninstall quit: "com.iggsoftware.banktivity"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iggsoftware.banktivity.sfl*",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end
