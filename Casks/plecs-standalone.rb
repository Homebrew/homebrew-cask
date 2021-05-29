cask "plecs-standalone" do
  version "4.5.5"
  sha256 "2b1e2435b84b31467bbf6bf58bd1f2fd508dfacfc188da890c7f14293ab764cf"

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
