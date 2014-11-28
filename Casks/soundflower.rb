cask :v1 => 'soundflower' do
  version '1.6.6b'
  sha256 '61ca31d7478d057e32caaeac3c739f965ba9eb2a27570b3cc715e706d4740dfb'

  url "https://soundflower.googlecode.com/files/Soundflower-#{version}.dmg"
  homepage 'https://code.google.com/p/soundflower/'
  license :oss

  pkg 'Soundflower.pkg', :allow_untrusted => true
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
