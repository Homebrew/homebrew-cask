cask "copilot-money" do
  version "6.9.0,341-b0b756b6"
  sha256 "b0b756b6d999329830e38c878d66d05351150521cfcdd69523b3096a819eb70c"

  url "https://storage.googleapis.com/copilot-mac-releases/images/Copilot-#{version.csv.first}-#{version.csv.second}.dmg"
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
  depends_on macos: :sonoma

  app "Copilot.app"

  zap trash: [
    "~/Library/Application Scripts/com.copilot.production*",
    "~/Library/Application Scripts/group.com.copilot.production",
    "~/Library/Containers/com.copilot.production",
    "~/Library/Group Containers/group.com.copilot.production",
  ]
end
