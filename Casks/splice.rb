cask 'splice' do
  version '2.0.9-201606161636'
  sha256 '60e05085b77f25d70a1e6a4c854fb9cfbfe26e28a62519817d28ce8c3ce75416'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '52e8c0268cffb6ba6479abfde683fb87d4fddae430b5c5f8441dc5459c6e9b5b'
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
