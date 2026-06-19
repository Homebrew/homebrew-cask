cask "banktivity" do
  version "10.0.5,425"
  sha256 "fca4d740debcae6daac6c05341f9cae347eee4ab7d2b033868cbc8ce7b0933fb"

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

  depends_on macos: :monterey

  app "Banktivity.app"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iggsoftware.banktivity.sfl*",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end
