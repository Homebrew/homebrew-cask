cask "copilot-money" do
  version "6.6.0,335-b7f9c533"
  sha256 "b7f9c533060f97f23c83d9052e5f78b41ebb256c61d7014203989438bc860612"

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
