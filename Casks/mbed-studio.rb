cask 'mbed-studio' do
  version '0.5.0'
  sha256 'b204ba1d545efd2631207f351adc99b422aaed574cc88b96e4f25960512406d7'

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
