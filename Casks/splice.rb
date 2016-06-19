cask 'splice' do
  version '2.0.8-201606151628'
  sha256 'e71a29b02fd4c96f4ada9696395cfcd60d2aa9e19780064894fb1e1adae387ff'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '4b16f14fb56ba110be13e90e7d0e3bebcafb1a9729ec770b27cc430e8a34e941'
  name 'Splice'
  homepage 'https://splice.com/'
  license :gratis

  app 'Splice.app'

  uninstall quit:   'com.splice.Splice'

  zap delete: [
                '~/Library/Application Support/*Splice*',
                '~/Library/Caches/com.splice*',
                '~/Library/Preferences/com.splice*',
              ]
end
