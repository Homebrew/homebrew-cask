cask 'kompozer' do
  version '0.8b3'
  sha256 '415e019c9b3ec1c76465bf4f561fa515f403e57ac6f92c76365d902241dc14ed'

  # sourceforge.net/kompozer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kompozer/current/#{version}/macosx/kompozer-#{version}.en-US.mac-universal.dmg"
  appcast 'https://sourceforge.net/projects/kompozer/rss?path=/current',
          checkpoint: '97078045e6600da2e7d1cccfc4bb344a4064ce1386fdfae4dd4592adfa4e74f2'
  name 'KompoZer'
  homepage 'https://kompozer.net/'

  app 'KompoZer.app'
end
