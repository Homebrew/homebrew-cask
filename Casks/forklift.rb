cask :v1 => 'forklift' do
  version '2.6.5'
  sha256 '54bdc30e19868726fdfcce4e45e9bebdbdaa2facb95158861389866c64077f9e'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast 'http://update.binarynights.com/ForkLift2/update.xml',
          :sha256 => '957448f1ae13068a429909c7bd516475b878d845afb8ba87754be32daab31ef3'
  name 'ForkLift'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'ForkLift.app'

  zap :delete => [
                  '~/Library/Preferences/com.binarynights.ForkLift2.plist',
                  '~/Library/Caches/com.binarynights.ForkLift2'
  ]
end
