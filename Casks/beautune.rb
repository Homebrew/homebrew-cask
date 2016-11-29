cask 'beautune' do
  version '1.0.5'
  sha256 'bd73f38bbb5053522671b9772b033bfa94da7b046d0705d60ec08d994a335f6d'

  # download.fotor.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://download.fotor.com.s3.amazonaws.com/BeautuneMacInstaller_v#{version}_en.dmg"
  name 'Beautune'
  homepage 'http://www.everimaging.com/software/beautune/'

  pkg "Beautune_mac_en_V#{version}.100.pkg"

  uninstall pkgutil: 'com.everimaging.beautune.Beautune.pkg'

  zap delete: '~/Library/Containers/com.everimaging.beautune'
end
