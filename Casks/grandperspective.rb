cask "grandperspective" do
  version "3.0.0"
  sha256 "4317fc2b5257e0f6a7d21a270fc3af143cb4a059e8cd854bdda8802bdf244f9c"

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
