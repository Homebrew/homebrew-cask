cask "grandperspective" do
  version "2.5.3"
  sha256 "d8ff960efcf028c19c5f53e756c39f83fa6a05ed0064a505a82f2d00f9558548"

  # downloads.sourceforge.net/grandperspectiv/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast "https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective"
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
