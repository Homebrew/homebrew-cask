cask 'monodraw' do
  version '1.2.3,b100'
  sha256 'fbc0216c2972e9b9f551b2b57da91f4e360b01649ad265ba1a81ad668cc0107b'

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-#{version.after_comma}.zip"
  appcast 'https://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: '5100268f61503349ebf01c7c609e4225c56431f32c9a54c2c131b0cbaedb76b2'
  name 'Monodraw'
  homepage 'https://monodraw.helftone.com/'

  app 'Monodraw.app'

  zap trash: [
               '~/Library/Application Support/com.helftone.monodraw',
               '~/Library/Caches/com.helftone.monodraw',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.helftone.monodraw.help*',
               '~/Library/Preferences/com.helftone.monodraw.plist',
             ]
end
