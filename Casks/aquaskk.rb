cask 'aquaskk' do
  version '4.4.0'
  sha256 'e5f0fa614c603f3acb0786decdb7c27b1ab12bcd8d271373dd4e07ccb2df55d1'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: 'a95d9fe8b1d0f8c678a024f7b7b4a5ff50925c2cdf591552292a72156967b4ba'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
