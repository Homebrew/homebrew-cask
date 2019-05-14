cask 'itubedownloader' do
  version '6.4.9'
  sha256 'ccc208d6f6a4587a8ceb6e846c98e00e701c23584deb16962d96488ce3fd4a1e'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/iTubeDownloader.dmg'
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
