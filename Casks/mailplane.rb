cask "mailplane" do
  version "4.3.2,4899"
  sha256 "b8396958fd3ed475ac33b35e5d9c9ae78bb6eec13358e83fd4c29e322e654649"

  url "https://builds.mailplaneapp.com/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  name "Mailplane"
  desc "Gmail client"
  homepage "https://mailplaneapp.com/"

  livecheck do
    url "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"
end
