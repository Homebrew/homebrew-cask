cask 'forklift' do
  version '2.6.6'
  sha256 '0fa2bb7927d07c0c13b964b517b500ea6a77a6a569becba3ea392b2f82c05fce'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "http://update.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '69e1f83deb9847553717f9edec621b7cdd93a918c13cef25804d44bb045788a9'
  name 'ForkLift'
  homepage 'http://www.binarynights.com/'

  app 'ForkLift.app'

  zap delete: [
                '~/Library/Preferences/com.binarynights.ForkLift2.plist',
                '~/Library/Caches/com.binarynights.ForkLift2',
              ]
end
