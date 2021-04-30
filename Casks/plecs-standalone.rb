cask "plecs-standalone" do
  version "4.5.4"
  sha256 "ad748ae086b6cae8b4bd446fcfc03783d21fa846840f6955d0636439058ae9a0"

  url "https://www.plexim.com/sites/default/files/packages/plecs-standalone-#{version.dots_to_hyphens}_maci64.dmg"
  name "PLECS"
  homepage "https://www.plexim.com/"

  livecheck do
    url "https://www.plexim.com/download/latest_version?myversion=#{version}"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/i)
  end

  app "PLECS #{version.major_minor}.app"

  zap trash: [
    "~/Library/Application Support/Plexim",
    "~/Library/Preferences/com.plexim.PLECS.plist",
    "~/Library/Saved Application State/com.plexim.plecs.savedState",
  ]
end
