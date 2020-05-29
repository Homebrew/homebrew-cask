cask 'itubedownloader' do
  version '6.5.19'
  sha256 'c1637166c8fd8750ed1d927cf07a7a382ec5520a9660ff5776619e96c1003b97'

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg'
  appcast 'https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
