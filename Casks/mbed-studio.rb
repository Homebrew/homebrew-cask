cask 'mbed-studio' do
  version '0.4.0'
  sha256 '0e6c4a9845d7e98590f1d9c640e71f41e2a048992ba1f21faeb5bce7189d8ca3'

  url 'https://studio.mbed.com/installers/latest/mac/MbedStudio.pkg'
  appcast 'https://os.mbed.com/docs/mbed-studio/'
  name 'Mbed Studio'
  homepage 'https://os.mbed.com/studio/'

  pkg 'MbedStudio.pkg'

  uninstall pkgutil: 'com.arm.mbed.studio'

  zap trash: [
               '~/Library/Application Support/Mbed Studio',
               '~/.mbed-library-cache',
               '~/.mbed-library-pipeline',
               '~/.mbed-studio',
             ]
end
