cask "mailplane" do
  version "4.3.10,4949"
  sha256 "f18d0e9aeab51cc1001a898945535c84ddba393749ca4ac775524d90be6d2e63"

  url "https://builds.mailplaneapp.com/Mailplane_#{version.major}_#{version.csv.second}.tbz"
  name "Mailplane"
  desc "Gmail client"
  homepage "https://mailplaneapp.com/"

  livecheck do
    url "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.csv.second}&shortVersionString=#{version.csv.first}"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"
end
