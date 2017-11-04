cask 'kite' do
  version '0.20171102.0'
  sha256 '21f783026690a1621305c9d83976b8e9ab1f9751faebfde133512660e373af13'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '53cc82b5d6414bc62f85a95087a7e3ad32ae1bf0ba452f278e9d8c7faa628691'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
