cask "subtitle-studio" do
  version "1.12.7"
  sha256 "ae461cd2b886df6b7cc0533c2ca1fa61e0cb6f6f8fdf0076e8006207bc1ddc76"

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
