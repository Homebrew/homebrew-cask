cask "cord" do
  version "0.5.7"
  sha256 "8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100"

  url "https://downloads.sourceforge.net/cord/cord/#{version.csv.first}/CoRD_#{version}.zip"
  name "CoRD"
  desc "Remote desktop client"
  homepage "https://cord.sourceforge.net/"

  livecheck do
    url "https://cord.sourceforge.net/sparkle.xml"
    strategy :sparkle, &:short_version
  end

  app "CoRD.app"

  zap trash: [
    "~/Library/Application Support/CoRD",
    "~/Library/Preferences/net.sf.cord.plist",
    "~/Library/Saved Application State/net.sf.cord.savedState",
  ]
end
