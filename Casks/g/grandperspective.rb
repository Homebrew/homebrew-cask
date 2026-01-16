cask "grandperspective" do
  on_catalina :or_older do
    version "3.3"
    sha256 "2e4a0f3b12be447cfdb1496c0292a57631acd7b24f568cb7d7c9d992458e90cf"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.6.2"
    sha256 "69dc20aea31642efd4936b52fa7596be8b8b4860657a16490220619f8c864304"
  end

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  name "GrandPerspective"
  desc "Graphically shows disk usage within a file system"
  homepage "https://grandperspectiv.sourceforge.net/"

  app "GrandPerspective.app"

  zap trash: [
    "~/Library/Application Scripts/net.courceforge.grandperspectiv",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.grandperspectiv.sfl*",
    "~/Library/Containers/net.sourceforge.grandperspectiv",
    "~/Library/Preferences/net.sourceforge.grandperspectiv.plist",
  ]
end
