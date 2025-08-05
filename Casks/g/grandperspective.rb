cask "grandperspective" do
  on_catalina :or_older do
    on_high_sierra :or_older do
      version "3.0.1"
      sha256 "64faab94df5ac39abbeb9e869a6c429d3441c3796ef67f79dab232ba7f0cb222"
    end
    on_mojave do
      version "3.3"
      sha256 "2e4a0f3b12be447cfdb1496c0292a57631acd7b24f568cb7d7c9d992458e90cf"
    end
    on_catalina do
      version "3.3"
      sha256 "2e4a0f3b12be447cfdb1496c0292a57631acd7b24f568cb7d7c9d992458e90cf"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.5.3"
    sha256 "c44b17968b2f8a11b9d9761e0d7a1827117dcccb5966d121315b42f72c1cd9f8"
  end

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  name "GrandPerspective"
  desc "Graphically shows disk usage within a file system"
  homepage "https://grandperspectiv.sourceforge.net/"

  depends_on macos: ">= :el_capitan"

  app "GrandPerspective.app"

  zap trash: [
    "~/Library/Application Scripts/net.courceforge.grandperspectiv",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.grandperspectiv.sfl*",
    "~/Library/Containers/net.sourceforge.grandperspectiv",
    "~/Library/Preferences/net.sourceforge.grandperspectiv.plist",
  ]
end
