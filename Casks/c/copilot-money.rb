cask "copilot-money" do
  version "6.8.2,340-69efc0f9"
  sha256 "69efc0f91a7e16f4b4c6d468ac39e555b77f74e9e45d1c9116b48cd7bd602ce8"

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
