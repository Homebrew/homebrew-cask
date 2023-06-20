cask "grandperspective" do
  on_high_sierra :or_older do
    version "3.0.1"
    sha256 "64faab94df5ac39abbeb9e869a6c429d3441c3796ef67f79dab232ba7f0cb222"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "3.2"
    sha256 "c4b9411e5c3903e210cd28ff4fdc09612e7423806df6f6e2a0e0d229618b2587"
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
