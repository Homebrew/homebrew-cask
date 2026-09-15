cask "grandperspective" do
  version "3.8.1"
  sha256 "df20837acaed53eaad186d8acb77b654f080aab4dd5d403dbe8696f4cb2d60cd"

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  name "GrandPerspective"
  desc "Graphically shows disk usage within a file system"
  homepage "https://grandperspectiv.sourceforge.net/"

  depends_on macos: :sonoma

  app "GrandPerspective.app"

  uninstall quit: "net.sourceforge.grandperspectiv"

  zap trash: [
    "~/Library/Application Scripts/net.courceforge.grandperspectiv",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.grandperspectiv.sfl*",
    "~/Library/Containers/net.sourceforge.grandperspectiv",
    "~/Library/Preferences/net.sourceforge.grandperspectiv.plist",
  ]
end
