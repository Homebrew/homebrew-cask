cask "mediaelch" do
  version "2.8.14,2022-02-06,84e18bb2"
  sha256 "df4ec3bc87919924517d2fb3f34ec680047cddbae550282905d63d8eaf28221f"

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

  zap trash: [
    "~/Library/Preferences/com.kvibes.MediaElch.plist",
    "~/Library/Saved Application State/com.kvibes.MediaElch.savedState",
  ]
end
