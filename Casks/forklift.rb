cask :v1 => 'forklift' do
  version '2.6.6'
  sha256 '0fa2bb7927d07c0c13b964b517b500ea6a77a6a569becba3ea392b2f82c05fce'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast 'http://update.binarynights.com/ForkLift2/update.xml',
          :sha256 => '06635ed48d05ac9318bcb2f527d848934f7bf32f173cc9aa1a1ee6bbc6c98443'
  name 'ForkLift'
  homepage 'http://www.binarynights.com/'
  license :commercial

  app 'ForkLift.app'

  zap :delete => [
                  '~/Library/Preferences/com.binarynights.ForkLift2.plist',
                  '~/Library/Caches/com.binarynights.ForkLift2'
  ]
end
