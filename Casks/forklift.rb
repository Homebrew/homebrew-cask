cask :v1 => 'forklift' do
  version '2.6.2'
  sha256 '326ef943df71204940ce1de537e00ec07724d69012901f5a967fa54747215a34'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast 'http://update.binarynights.com/ForkLift2/update.xml',
          :sha256 => '1641b37355845f454c6c6d9ecc8565d6bc14720b68a8665c0bdde0ff6616aec0'
  homepage 'http://www.binarynights.com/'
  license :unknown

  app 'ForkLift.app'

  zap :delete => '~/Library/Preferences/com.binarynights.ForkLift2.plist'
end
