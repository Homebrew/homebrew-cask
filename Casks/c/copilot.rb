cask "copilot" do
  version "3.5.32,184-10dfefb4"
  sha256 "10dfefb42eaf66113a801f9da0c57f4cf538f3ca3817190577afddcb00226856"

  url "https://storage.googleapis.com/copilot-mac-releases/images/Copilot-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "storage.googleapis.com/copilot-mac-releases/"
  name "Copilot"
  desc "Track and budget money"
  homepage "https://copilot.money/"

  livecheck do
    url "https://releases.copilot.money/latest"
    regex(/copilot[._-](\d+(?:\.\d+)+)-(\d+)-(\w+)/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[0]},#{match[1]}-#{match[2]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Copilot.app"

  zap trash: [
    "~/Library/Containers/com.copilot.production",
    "~/Library/Group Containers/group.com.copilot.production",
  ]
end
