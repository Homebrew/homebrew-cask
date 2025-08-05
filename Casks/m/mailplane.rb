cask "mailplane" do
  version "4.3.12,4954"
  sha256 "dcd7243a0ea909b838d92664ea8e85dcb9f3e0648da713568b4856384a7b924b"

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

  caveats do
    requires_rosetta
  end
end
