cask 'itubedownloader' do
  version '6.5.9'
  sha256 'c5334262b5f975f7d0eb4e9c6e666d6d2a8a53ab71a035ea04d468e15c95a27d'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/iTubeDownloader.dmg'
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
