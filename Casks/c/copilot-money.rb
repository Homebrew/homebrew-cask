cask "copilot-money" do
  version "6.5.0,334-b39f409a"
  sha256 "b39f409af4c4d925b659161d06fc7e78ec45dc2b7c9e7c77f15593f15c9afdb2"

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
    "~/Library/Containers/com.copilot.production",
    "~/Library/Group Containers/group.com.copilot.production",
  ]
end
