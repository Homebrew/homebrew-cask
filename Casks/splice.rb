cask 'splice' do
  version '2.3-201706010955'
  sha256 'e260ac2e838056979e0be763e89511ae89676c854536011402912856e5e8788e'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'a7725c36fa5b01d7ddc1641a04c6bfe987d7ea6c9da8a8975f1a93f5e1cf74ca'
  name 'Splice'
  homepage 'https://splice.com/'

  app 'Splice.app'

  uninstall quit: 'com.splice.Splice'

  zap trash: [
               '~/Library/Application Support/*Splice*',
               '~/Library/Caches/com.splice*',
               '~/Library/Preferences/com.splice*',
             ]
end
