cask "copilot" do
  version "6.0.2,295-3db3cb65"
  sha256 "3db3cb65431120034c68a350f564ab6d0344b147c9ff9ce3e1da584ad43d6b1e"

  url "https://storage.googleapis.com/copilot-mac-releases/images/Copilot-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "storage.googleapis.com/copilot-mac-releases/"
  name "Copilot"
  desc "Track and budget money"
  homepage "https://copilot.money/"

  livecheck do
    url "https://releases.copilot.money/last_release?channel=production"
    regex(/copilot[._-](\d+(?:\.\d+)+)-(\d+-\h+)/i)
    strategy :json do |json, regex|
      json["url"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
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
