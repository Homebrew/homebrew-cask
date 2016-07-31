cask 'kompozer' do
  version '0.8b3'
  sha256 '415e019c9b3ec1c76465bf4f561fa515f403e57ac6f92c76365d902241dc14ed'

  # downloads.sourceforge.net/kompozer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kompozer/current/#{version}/macosx/kompozer-#{version}.en-US.mac-universal.dmg"
  appcast 'https://sourceforge.net/projects/kompozer/rss',
          checkpoint: '4dad87fd25d39f7fe7fb20c62257efe85a84ddc2f5a2de4287909a775b2bc14a'
  name 'KompoZer'
  homepage 'http://www.kompozer.net/'
  license :oss

  app 'KompoZer.app'
end
