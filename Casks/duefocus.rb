cask "duefocus" do
  version "2.5.0"
  sha256 "28c9029ee71701ecc1daa8d6ed070f33232d3a5c0c9cf878d916dbec63a8dc7a"

  url "https://web.duefocus.com/distribution/darwin/v3/DueFocus-#{version}.dmg"
  name "DueFocus"
  desc "Time tracking and productivity software"
  homepage "https://duefocus.com/"

  livecheck do
    url "https://web.duefocus.com/distribution/darwin/v3/appcast.html"
    regex(%r{/DueFocus[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "DueFocus.app"

  zap trash: [
    "~/Library/Application Support/DueFocus",
    "~/Library/Logs/DueFocus",
    "~/Library/Preferences/com.qarea.duefocus.plist",
  ]
end
