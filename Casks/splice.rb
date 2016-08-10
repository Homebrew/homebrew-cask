cask 'splice' do
  version '2.1.1-201608051633'
  sha256 '597136e4c5d4404a882902d0d41f4226dffb809cb722d0737319e92e2e73d20a'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '878d19e7d54ed9e76de395d5b1a463c99c469eaec9c8a1b7800315c467c22267'
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
