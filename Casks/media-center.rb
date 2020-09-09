cask "media-center" do
  version "26.0.107"
  sha256 "8865b68f48fca629729b50175498cfae7d782a078bb948fa1a54f349615f35a0"

  url "https://files.jriver.com/mediacenter/channels/v#{version.major}/latest/MediaCenter#{version.no_dots}.dmg"
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
