cask "nagbar" do
  version "1.3.7"
  sha256 "9a4b256250d4527423efd16e90cc7d087bc6ca9306bdc5267a6441194e73a44b"

  url "https://github.com/volendavidov/NagBar/releases/download/#{version}/NagBar.zip",
      verified: "github.com/volendavidov/NagBar/"
  name "NagBar"
  desc "Status bar monitor for Nagios, Icinga/2 and Thruk"
  homepage "https://sites.google.com/site/nagbarapp/home"

  depends_on macos: ">= :mojave"

  app "NagBar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl*",
    "~/Library/Caches/com.volendavidov.NagBar",
    "~/Library/Preferences/com.volendavidov.NagBar.plist",
  ]

  caveats do
    requires_rosetta
  end
end
