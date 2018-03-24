cask 'itubedownloader' do
  version '6.3.5,1518339953'
  sha256 '9914510b10bc780e84a59918d361ba7e33fa112caabb98d8ee7ca717389c09b5'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml',
          checkpoint: 'e701234ba2e7d6505d49837133f78fee3d99caef20848e3c7eb81e964987223b'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
