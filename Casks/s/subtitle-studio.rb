cask "subtitle-studio" do
  version "1.10.3"
  sha256 "07589d8c997ad81df7c037b5b20796a1129d0920e78c67d0dfe140ced20b65f0"

  url "https://assets.subtitlestudio.ai/releases/Subtitle%20Studio-arm64-#{version}.dmg"
  name "Subtitle Studio"
  desc "Offline AI subtitle generator"
  homepage "https://subtitlestudio.ai/"

  livecheck do
    url "https://subtitlestudio.ai/api/update/check"
    strategy :json do |json|
      json["latestVersion"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Subtitle Studio.app"

  zap trash: [
    "~/Library/Application Support/subtitle-studio",
    "~/Library/Preferences/com.subtitle.studio.plist",
  ]
end
