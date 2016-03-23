cask 'gateblu' do
  version '5.5.9'
  sha256 '95d4930e25085f145b93e2b801ef8698c384925c0e3de2d9608d6527959787e8'

  # amazonaws.com/gateblu was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gateblu/gateblu-ui/latest/Gateblu.dmg'
  appcast 'https://github.com/octoblu/gateblu/releases.atom',
          checkpoint: '75a98fe5563807b48ac84453a7698190bfe75ae9b7b14a484ede8a4408286de3'
  name 'Gateblu'
  homepage 'https://gateblu.octoblu.com'
  license :mit

  pkg 'Gateblu Installer.pkg'

  uninstall pkgutil: 'com.octoblu.*',
            delete:  '/Applications/Gateblu.app'
end
