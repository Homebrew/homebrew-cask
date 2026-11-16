cask "subtitle-studio" do
  version "1.13.1"
  sha256 "691a17ac7d720507ebf9b38be34759819c881d33ccfba3313f4ee6e49b542145"

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
  depends_on macos: :ventura

  app "Subtitle Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.subtitlestudio.subtitlestudio.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.subtitle.studio.sfl*",
    "~/Library/Application Support/subtitle-studio",
    "~/Library/Preferences/ai.subtitlestudio.subtitlestudio.plist",
    "~/Library/Preferences/com.subtitle.studio.plist",
  ]
end
