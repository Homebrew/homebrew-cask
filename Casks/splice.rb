cask 'splice' do
  version '2.2-201611251707'
  sha256 '7f5cf850435c1b3dc75f6a26b8a7752d6f207eb2ff342d3e603b13cf9fd97667'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '267cb11f3ed988195e22bcf2c2a547ab79159256e60823b71fbad593419cfbc4'
  name 'Splice'
  homepage 'https://splice.com/'

  app 'Splice.app'

  uninstall quit: 'com.splice.Splice'

  zap delete: [
                '~/Library/Application Support/*Splice*',
                '~/Library/Caches/com.splice*',
                '~/Library/Preferences/com.splice*',
              ]
end
