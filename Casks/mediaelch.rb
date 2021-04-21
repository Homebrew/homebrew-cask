cask "mediaelch" do
  version "2.8.6,2021-01-22:f215c8a6"
  sha256 "fe0a437d7f841741a89bc7e0dd52b4740e75ecb33e9bf3ebc72d8b9ace6e3e90"

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
