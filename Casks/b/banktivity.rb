cask "banktivity" do
  version "9.5.7,305"
  sha256 "efe7a4ba4e00335c31596380bdb20dadd85aa94c7130f357f2e90a26dad61f0b"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "iggsoft.com/banktivity/"
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

  depends_on macos: ">= :catalina"

  app "Banktivity.app"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iggsoftware.banktivity.sfl*",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end
