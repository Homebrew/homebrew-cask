cask :v1 => 'soundflower' do
  version '2.0b2'
  sha256 '6b5e56d53238cf0f9075886aa40580634fc9d23368239f22eccebfd97c9f8e34'

  url "https://github.com/mattingalls/Soundflower/releases/download/#{version}/Soundflower-#{version}.dmg"
  appcast 'https://github.com/mattingalls/Soundflower/releases.atom'
  name 'Soundflower'
  homepage 'https://github.com/mattingalls/Soundflower'
  license :oss

  pkg 'Soundflower.pkg'

  postflight do
    system '/usr/bin/sudo', '-E', '--',
      '/sbin/kextload', '-b', 'com.Cycling74.driver.Soundflower'
  end

  # early_script is a workaround for a slowly unloading kext, see private-eye Cask
  uninstall :early_script => {
              :executable => '/sbin/kextunload',
              :args => ['-b', 'com.Cycling74.driver.Soundflower'],
              :must_succeed => false,
            },
            :pkgutil => 'com.cycling74.soundflower.*',
            :delete => '/Applications/Soundflower',
            :kext => 'com.Cycling74.driver.Soundflower'
end
