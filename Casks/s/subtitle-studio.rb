cask "subtitle-studio" do
  version "1.10.12"
  sha256 "d98ae90f50c10b52d32c5a4ad7b68d0bb338609725eaa01f63b81256e1df9391"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.subtitle.studio.sfl*",
    "~/Library/Application Support/subtitle-studio",
    "~/Library/Preferences/com.subtitle.studio.plist",
  ]
end
