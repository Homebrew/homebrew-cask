cask 'itubedownloader' do
  version '6.5.15'
  sha256 '0131f430cd0b0e1be1c0363986ea0ab9d7413debf4c822f4c625d44b5b4b7c0d'

  # itubedownloader.s3.us-east-2.amazonaws.com was verified as official when first introduced to the cask
  url 'https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg'
  appcast 'https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml'
  name 'iTubeDownloader'
  homepage 'https://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
