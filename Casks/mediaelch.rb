cask "mediaelch" do
  version "2.8.12,2021-05-10_06-33:08ebf8c0"
  sha256 "75390642ca0228d2f0086fd99363ec9d9708aafc92aaa8b01f1acd1f2f8e7465"

  url "https://github.com/Komet/MediaElch/releases/download/v#{version.before_comma}/MediaElch_macOS_#{version.before_comma}_#{version.after_comma.before_colon}_git-master-#{version.after_colon}.dmg",
      verified: "github.com/Komet/MediaElch/"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  livecheck do
    url "https://github.com/Komet/MediaElch/releases/latest"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/MediaElch_macOS_(\d+(?:\.\d+)*)_(\d+(?:.\d+)*)_git-master-([^/]*?)\.dmg}i,
      )
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "MediaElch.app"
end
