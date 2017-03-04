cask 'forklift' do
  version '3.0.1'
  sha256 '9862f328491e63a093089d39fa4447b703a09453595159ee18d236749124c02f'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '0a9e9ab9015107a431fc4e3fdb79a44ea4421b1f76eafd719f6938ea94f42f70'
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
