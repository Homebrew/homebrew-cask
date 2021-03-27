cask "plecs-standalone" do
  version "4.5.3"
  sha256 "13b222bfce3e29abdc32384338de52337380296b7d052e8c1959357f73eb86c3"

  url "https://www.plexim.com/sites/default/files/packages/plecs-standalone-#{version.dots_to_hyphens}_maci64.dmg"
  appcast "https://www.plexim.com/download/latest_version?myversion=#{version}"
  name "PLECS"
  homepage "https://www.plexim.com/"

  app "PLECS #{version.major_minor}.app"

  zap trash: [
    "~/Library/Application Support/Plexim",
    "~/Library/Preferences/com.plexim.PLECS.plist",
    "~/Library/Saved Application State/com.plexim.plecs.savedState",
  ]
end
