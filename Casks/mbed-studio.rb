cask 'mbed-studio' do
  version '0.5.1'
  sha256 'fa000124b45283fca78ae871639db23ccef336e92757dc5d5f23e38bdb0d4d0c'

  url 'https://studio.mbed.com/installers/latest/mac/MbedStudio.pkg'
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
