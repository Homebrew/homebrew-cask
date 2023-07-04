cask "grandperspective" do
  on_high_sierra :or_older do
    version "3.0.1"
    sha256 "64faab94df5ac39abbeb9e869a6c429d3441c3796ef67f79dab232ba7f0cb222"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "3.3"
    sha256 "2e4a0f3b12be447cfdb1496c0292a57631acd7b24f568cb7d7c9d992458e90cf"
  end

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg",
      verified: "downloads.sourceforge.net/grandperspectiv/"
  name "GrandPerspective"
  desc "Graphically shows disk usage within a file system"
  homepage "https://grandperspectiv.sourceforge.io/"

  app "GrandPerspective.app"

  zap trash: [
    "~/Library/Application Scripts/net.courceforge.grandperspectiv",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.grandperspectiv.sfl2",
    "~/Library/Containers/net.sourceforge.grandperspectiv",
    "~/Library/Preferences/net.sourceforge.grandperspectiv.plist",
  ]
end
