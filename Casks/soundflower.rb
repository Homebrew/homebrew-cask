cask 'soundflower' do
  version '2.0b2'
  sha256 '6b5e56d53238cf0f9075886aa40580634fc9d23368239f22eccebfd97c9f8e34'

  url "https://github.com/mattingalls/Soundflower/releases/download/#{version}/Soundflower-#{version}.dmg"
  appcast 'https://github.com/mattingalls/Soundflower/releases.atom',
          checkpoint: '02b56380ecc6fe4e29bd5a1b1410eee360c2947faf69b114b401e440455353a0'
  name 'Soundflower'
  homepage 'https://github.com/mattingalls/Soundflower'

  pkg 'Soundflower.pkg'

  postflight do
    system_command '/sbin/kextload',
                   args: ['-b', 'com.Cycling74.driver.Soundflower'],
                   sudo: true
  end

  # early_script is a workaround for a slowly unloading kext, see private-eye Cask
  uninstall early_script: {
                            executable:   '/sbin/kextunload',
                            args:         ['-b', 'com.Cycling74.driver.Soundflower'],
                            must_succeed: false,
                          },
            pkgutil:      'com.cycling74.soundflower.*',
            kext:         'com.Cycling74.driver.Soundflower'
end
