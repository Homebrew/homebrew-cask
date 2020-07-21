cask 'itubedownloader' do
  version '6.5.20'
  sha256 '1174c7679b80470e23f763e8c36ba5578de32189581a74a3cf70439fffe6ec08'

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg'
  appcast 'https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
