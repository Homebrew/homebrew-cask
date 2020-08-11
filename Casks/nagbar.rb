cask "nagbar" do
  version "1.3.6"
  sha256 "31efe0ff0428dc1d45e04c8e4954dc25fd7f4f7839bb1adc763b626f44efc17d"

  # github.com/volendavidov/NagBar/ was verified as official when first introduced to the cask
  url "https://github.com/volendavidov/NagBar/releases/download/#{version}/NagBar.zip"
  appcast "https://github.com/volendavidov/NagBar/releases.atom"
  name "NagBar"
  desc "Status bar monitor for Nagios, Icinga/2 and Thruk"
  homepage "https://sites.google.com/site/nagbarapp/home"

  app "NagBar.app"

  zap trash: [
    "~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl*",
    "~/Caches/com.volendavidov.NagBar",
    "~/Preferences/com.volendavidov.NagBar.plist",
  ]
end
