cask "mediaelch" do
  version "2.8.14,2022-02-06,84e18bb"
  sha256 "a849c3b2e152776a7c60e17f58941c7ac11db362c19e2c64ec8f3d10e3182243"
  url "https://github.com/Komet/MediaElch/releases/download/v#{version.csv.first}/MediaElch_macOS_#{version.csv.first}_#{version.csv.second}_git-#{version.csv.third}.dmg",
      verified: "github.com/Komet/MediaElch/"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  livecheck do
    url "https://github.com/Komet/MediaElch/releases/latest"
    regex(%r{href=.*?/MediaElch_macOS_(\d+(?:\.\d+)*)_(\d+(?:.\d+)*)_git-([^/]*?)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "MediaElch.app"
end
