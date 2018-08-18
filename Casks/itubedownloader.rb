cask 'itubedownloader' do
  version '6.3.8.1,1534445019'
  sha256 '7364fb08b9c85507c3be309b7e603ba509bb33be07b2239e733927d1e79ebaab'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
