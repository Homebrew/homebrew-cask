cask 'itubedownloader' do
  version '6.5.18'
  sha256 'f1453038d0e9118c0950bffb7dd09982c75d9873e0d399cb6797fb53c6c07a8e'

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg'
  appcast 'https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
