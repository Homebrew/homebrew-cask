cask "mediaelch" do
  version "2.8.10,2021-05-03:8fa99efb"
  sha256 "9f6fbc0bcb97887193ea4713fb7834c5f294ffa6b1ba2ceb440c076d77ab9a6a"

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
