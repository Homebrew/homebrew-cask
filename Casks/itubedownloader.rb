cask 'itubedownloader' do
  version '6.5.16'
  sha256 '46592a86a834e71b0b23edd6e6e2520c2515c79149f6a213cdf30e8b7166a7c1'

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg'
  appcast 'https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
