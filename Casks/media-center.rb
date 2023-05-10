cask "media-center" do
  version "31.00.09"
  sha256 "f7c4c9be2d62a6bcaf85e9301300c63fe2dded3ff7d21aa09e90d6945da5d7db"

  url "https://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}-Universal.dmg"
  name "JRiver Media Center"
  desc "Media manager and player"
  homepage "https://www.jriver.com/"

  livecheck do
    url "https://www.jriver.com/download.html"
    strategy :page_match do |page|
      match = page.match(/MediaCenter(\d\d+)(\d\d+)(\d\d+)-Universal\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

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
