cask 'emcrisostomo-menumeters' do
  version '1.9.7+emc'
  sha256 '9d4fa909eee01939be5a851502e3f77bbf990af3e228fbeb14a4af7d8fde5862'

  # github.com/emcrisostomo/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/emcrisostomo/MenuMeters/releases/download/#{version}/MenuMeters-#{version}.dmg"
  appcast 'https://github.com/emcrisostomo/MenuMeters/releases.atom'
  name 'MenuMeters Installer edition'
  homepage 'https://emcrisostomo.github.io/MenuMeters/'

  conflicts_with cask: [
                         'menumeters',
                         'yujitach-menumeters',
                       ]
  depends_on macos: '>= :el_capitan'

  pkg 'MenuMeters.pkg'

  uninstall pkgutil: 'com.yujitach.MenuMeters'
end
