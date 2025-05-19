cask "copilot" do
  version "5.2.2,288-cdfe2de0"
  sha256 "cdfe2de0a464e0c3fc4ea744979a02094254d29fe1442229b4548ef6b180c162"

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
