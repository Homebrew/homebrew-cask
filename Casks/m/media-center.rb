cask "media-center" do
  version "36.00.54"
  sha256 "4d848526485679b72c11bc4edc49c4b7d44bc4963367e7529ba0da39794624f1"

  url "https://files.jriver-cdn.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}-Universal.dmg"
  name "JRiver Media Center"
  desc "Media manager and player"
  homepage "https://www.jriver.com/index.html"

  livecheck do
    url "https://www.jriver.com/download.html"
    regex(/MediaCenter(\d\d)(\d\d)(\d\d+)-Universal\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}.#{match[1]}.#{match[2]}" }
    end
  end

  auto_updates true
  depends_on :macos

  app "Media Center #{version.major}.app"

  uninstall quit: "com.jriver.MediaCenter#{version.major}"

  zap trash: [
    "~/Documents/JRiver",
    "~/Library/Application Support/J River",
    "~/Library/Caches/com.jriver.MediaCenter#{version.major}",
    "~/Library/Cookies/com.jriver.MediaCenter#{version.major}*",
    "~/Library/Preferences/com.jriver.MediaCenter#{version.major}.plist",
    "~/Library/Saved Application State/com.jriver.MediaCenter#{version.major}.savedState",
  ]
end
