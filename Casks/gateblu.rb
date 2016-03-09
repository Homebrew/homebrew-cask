cask 'gateblu' do
  version '5.5.8'
  sha256 '38c7af1d6cec55a1c57c684c2c2152b954bddd2dcfd05d3b8b938d2f17f29f8f'

  # amazonaws.com/gateblu was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gateblu/gateblu-ui/latest/Gateblu.dmg'
  appcast 'https://github.com/octoblu/gateblu/releases.atom',
          checkpoint: '731ed0c4826ff40f5d1fe66300ff871883b32cbfa74bacdad74133bc82a72801'
  name 'Gateblu'
  homepage 'https://gateblu.octoblu.com'
  license :mit

  pkg 'Gateblu Installer.pkg'

  uninstall pkgutil: 'com.octoblu.*',
            delete:  '/Applications/Gateblu.app'
end
