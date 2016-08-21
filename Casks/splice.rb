cask 'splice' do
  version '2.1.2-201608191316'
  sha256 'd97171a120928ed34c88e97bc131eaa4ae56212f917ccdcf8bc6bdd0c8361bf5'

  # amazonaws.com/spliceosx was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/spliceosx/Splice.app-#{version}.zip"
  appcast 'https://splice.com/appcast.xml',
          checkpoint: 'bb207f4f60197bed49fb278f8c8f9b0a58da83c5137708b779f3c5cc794778c9'
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
