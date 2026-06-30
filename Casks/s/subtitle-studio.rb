cask "subtitle-studio" do
  version "1.9.8"
  sha256 "945ff0828b9f4dac53551eaec4ae47efa9fa95e64706b2195514a9acb86be23f"

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
