cask 'splice' do
  version '2.0.10-201606301108'
  sha256 '0f3ca1a6ce277792e49e33c2748ddf708aa23133d50b482dcce4520943e82e79'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '6fb417fcd094903120cebe48ec80828adf7ab89990e9c1a1d35f54b7101caa1e'
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
