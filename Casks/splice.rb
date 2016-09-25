cask 'splice' do
  version '2.1.6-201609191609'
  sha256 '8c77277c9dc9572be340c00019da39e3743c9e79db26567e2578fdeebf08547d'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '883e544c2c053b96fc24c2adee042d466d078adc462e6e5f881936e5213d18b5'
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
