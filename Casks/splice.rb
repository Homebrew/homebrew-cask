cask 'splice' do
  version '2.2.5-201702161914'
  sha256 'c04a7d69d89ab170daf6cb9b6bdccd54392e7d29173f19ff2d4f38ca36e832c4'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '2d4be1d9bb47fec0cad785340af4747fbdc09978a9f4bf7b2e1cb88c951bdb43'
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
