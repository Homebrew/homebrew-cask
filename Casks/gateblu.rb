cask 'gateblu' do
  version '7.0.1'
  sha256 'c1e2f938761b421484212106a97d9c35501f98b814f33c9ca36c3e8d49523b35'

  # s3-us-west-2.amazonaws.com/gateblu was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gateblu/gateblu-ui/latest/Gateblu.dmg'
  appcast 'https://github.com/octoblu/gateblu/releases.atom',
          checkpoint: '83432afb7d03af5e597d06b46cf039d7ac04948200b27224b736222fd924529e'
  name 'Gateblu'
  homepage 'https://gateblu.octoblu.com'

  pkg 'Gateblu Installer.pkg'

  uninstall pkgutil: 'com.octoblu.*',
            delete:  '/Applications/Gateblu.app'
end
