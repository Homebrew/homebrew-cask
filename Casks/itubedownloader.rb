cask 'itubedownloader' do
  version '6.4.14'
  sha256 '388cc550e9030fc40cdd80c396cd8edffc191f75265c94f2e511e9de09068735'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/iTubeDownloader.dmg'
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
