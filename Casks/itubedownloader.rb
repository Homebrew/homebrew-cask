cask 'itubedownloader' do
  version '6.5.12'
  sha256 'b4a55c37ed259b120091cde1c5508fe5283da464222c2028e222b7f25560f4e4'

  # itubedownloader.s3.us-east-2.amazonaws.com was verified as official when first introduced to the cask
  url 'https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg'
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
