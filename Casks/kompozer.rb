cask 'kompozer' do
  version '0.8b3'
  sha256 '415e019c9b3ec1c76465bf4f561fa515f403e57ac6f92c76365d902241dc14ed'

  # sourceforge.net/kompozer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kompozer/current/#{version}/macosx/kompozer-#{version}.en-US.mac-universal.dmg"
  appcast 'https://sourceforge.net/projects/kompozer/rss?path=/current',
          checkpoint: 'bcf2fe720ea0abafaa21f240f2186752e129fa76c2474fbc4903e94cdd4b5e44'
  name 'KompoZer'
  homepage 'https://www.kompozer.net/'

  app 'KompoZer.app'
end
