cask 'gateblu' do
  version '5.5.8'
  sha256 'a0a29d7cf158747bcd1e722de23430db71605c32395b51835a066255766e4f94'

  # amazonaws.com/gateblu was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gateblu/gateblu-ui/latest/Gateblu.dmg'
  appcast 'https://github.com/octoblu/gateblu/releases.atom',
          checkpoint: '4402fe333a20866d098d55224fe6a4e33ba54505a1e900ae8c91e80cf5d69257'
  name 'Gateblu'
  homepage 'https://gateblu.octoblu.com'
  license :mit

  pkg 'Gateblu Installer.pkg'

  uninstall pkgutil: 'com.octoblu.*',
            delete:  '/Applications/Gateblu.app'
end
