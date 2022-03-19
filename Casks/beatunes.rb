cask "beatunes" do
  version "5.2.26"
  sha256 "a57dd2ec49781db216ac123747844d761819939a9f61dbd405ee39d141a94f18"

  url "https://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/beatunes-download.html"
    strategy :page_match do |page|
      match = page[/href=.*?beaTunes[._-]?v?(\d+(?:-\d+)+)\.dmg/i, 1]
      next if match.blank?

      match.tr("-", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "beaTunes#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]
end
