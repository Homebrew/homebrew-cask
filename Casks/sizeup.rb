cask 'sizeup' do
  version '1.7.2'
  sha256 '47bf12ac22b03311dfde7ce3a5f5a5bfd593a9ba4842a42f929a53874776125b'

  url "https://www.irradiatedsoftware.com/downloads/SizeUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/sizeup.php',
          checkpoint: '910fc53824ede404c1faaeda5f0cc61c1f6be349ef5364637deb9c62638262ae'
  name 'SizeUp'
  homepage 'https://www.irradiatedsoftware.com/sizeup/'

  accessibility_access true

  app 'SizeUp.app'

  zap delete: [
                '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                '~/Library/Application Support/SizeUp',
              ]
end
