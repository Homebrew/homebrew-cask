cask :v1 => 'forklift' do
  version '2.6.4'
  sha256 'b32b831214943033f3322c37113b4e9b65efb51136280ce6a279b608f72342b7'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast 'http://update.binarynights.com/ForkLift2/update.xml',
          :sha256 => '1641b37355845f454c6c6d9ecc8565d6bc14720b68a8665c0bdde0ff6616aec0'
  name 'ForkLift'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'ForkLift.app'

  zap :delete => [
                  '~/Library/Preferences/com.binarynights.ForkLift2.plist',
                  '~/Library/Caches/com.binarynights.ForkLift2'
  ]
end
