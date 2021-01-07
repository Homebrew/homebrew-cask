cask "mediaelch" do
  version "2.8.2,2020-12-20:8ee88442"
  sha256 "5be79bead84671b487e35de41ea69b4d1a98696565d7d246f6bc11e4def53833"

  url "https://github.com/Komet/MediaElch/releases/download/v#{version.before_comma}/MediaElch_macOS_#{version.before_comma}_#{version.after_comma.before_colon}_git-#{version.after_colon}.dmg",
      verified: "github.com/Komet/MediaElch/"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  livecheck do
    url "https://github.com/Komet/MediaElch/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/MediaElch_macOS_(\d+(?:\.\d+)*)_(\d+(?:-\d+)*)_git-([^/]*?)\.dmg}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "MediaElch.app"
end
