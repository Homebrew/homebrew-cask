cask 'splice' do
  version '2.1.4-201608232053'
  sha256 '98f1a111407316e4bbc69f126b208a88e6389fb27244d3919877e5600c475816'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'ef5ffb099463af8c2820b026451ab058ade07ad65853898b16ee70af1e75005b'
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
