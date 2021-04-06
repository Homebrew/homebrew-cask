cask "media-center" do
  version "27.00.15"
  sha256 "1fc547cd95d9c51cb78f0f1885b7fa1e29a3bc8031d1527a000aa5273688e72b"

  url "https://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  appcast "https://www.jriver.com/download.html",
          must_contain: version.no_dots
  name "JRiver Media Center"
  homepage "https://www.jriver.com/"

  auto_updates true

  app "Media Center #{version.major}.app"

  zap trash: [
    "~/Documents/JRiver/",
    "~/Library/Application Support/J River/",
    "~/Library/Caches/com.jriver.MediaCenter#{version.major}",
    "~/Library/Cookies/com.jriver.MediaCenter#{version.major}*",
    "~/Library/Preferences/com.jriver.MediaCenter#{version.major}.plist",
    "~/Library/Saved Application State/com.jriver.MediaCenter#{version.major}.savedState",
  ]
end
