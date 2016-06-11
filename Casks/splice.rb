cask 'splice' do
  version '2.0.6-201606101607'
  sha256 '58a8255b1bbdbd7587819cee038e5ef885268394131d241f5bfa248daeb041d7'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: '6107d266ac8d3a03c93819fd39c358742f12a1648c82ee7da400f69bafe4842d'
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
