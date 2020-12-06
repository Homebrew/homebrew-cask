cask "nagbar" do
  version "1.3.7"
  sha256 "9a4b256250d4527423efd16e90cc7d087bc6ca9306bdc5267a6441194e73a44b"

  # github.com/volendavidov/NagBar/ was verified as official when first introduced to the cask
  url "https://github.com/volendavidov/NagBar/releases/download/#{version}/NagBar.zip"
  appcast "https://github.com/volendavidov/NagBar/releases.atom"
  name "NagBar"
  desc "Status bar monitor for Nagios, Icinga/2 and Thruk"
  homepage "https://sites.google.com/site/nagbarapp/home"

  depends_on macos: ">= :mojave"

  app "NagBar.app"

  zap trash: [
    "~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl*",
    "~/Caches/com.volendavidov.NagBar",
    "~/Preferences/com.volendavidov.NagBar.plist",
  ]
end
