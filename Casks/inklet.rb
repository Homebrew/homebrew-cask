cask 'inklet' do
  version '2.1.0'
  sha256 '1139c5c89ed19e0b7ed436b11711f17d6fc063a5c030a56d14102b52531a9e04'

  url "https://tenonedesign.com/apps/inklet/Inklet-#{version}.zip"
  appcast 'https://tenonedesign.com/apps/inklet/profileInfo2.php',
          checkpoint: 'ef500e8faaa074b4161a6a5fd1bf46ed50ba196f886849b5456388ebbbfece37'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'

  app 'Inklet.app'
end
