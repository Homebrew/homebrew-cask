cask "plecs-standalone" do
  version "4.3.6"
  sha256 "a517cebe68283865b34107351958ae817da3e25baa0aebb704d587258ab32842"

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
