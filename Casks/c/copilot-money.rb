cask "copilot-money" do
  version "6.7.0,336-0bbb0dcd"
  sha256 "0bbb0dcde4685f0bc3388a2fb830838a2962b3f7eee38ac704e14453abe58fb2"

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
