cask 'forklift' do
  version '3.0.2'
  sha256 'ed2f80aedf3310c7b4a57b60ad239ed62649a126e8a3d38da34a0c53199cb89d'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: 'b092b376c93df173ee505d897b4cc20c5a7da8d763b2d1101010856b0bb60d55'
  name 'ForkLift'
  homepage 'https://binarynights.com/forklift/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'ForkLift.app'

  zap delete: [
                '~/Library/Application Support/ForkLift',
                '~/Library/Caches/com.binarynights.ForkLift-3',
                '~/Library/Preferences/com.binarynights.ForkLift-3.plist',
                '~/Library/Saved Application State/com.binarynights.ForkLift-3.savedState',
              ]
end
