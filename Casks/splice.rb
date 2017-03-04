cask 'splice' do
  version '2.2.2-201701051612'
  sha256 'de05ec24a6d14298888463d376189fcf059224760ea5fccc144c9e97c8b62d0f'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'ada6b14ef4fbc779f2fba277da11f09b4b87de6c593eacc79d9da1cd5254cea1'
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
