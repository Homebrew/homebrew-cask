cask "media-center" do
  version "30.00.93"
  sha256 "9d72153843db01fbde3db34a7c84ac6dad1917232d97bcf0f93d0188f5bcc199"

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
