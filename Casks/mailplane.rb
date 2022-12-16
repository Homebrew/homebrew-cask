cask "mailplane" do
  version "4.3.5,4923"
  sha256 "c26290504e2b557f146b6571baf143a14508d1a3edaf934a409008af3d7ef0eb"

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
