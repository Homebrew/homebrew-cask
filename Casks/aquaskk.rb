cask 'aquaskk' do
  version '4.4.2'
  sha256 '745a864ac3682cfe9f94ad39f46ffbdd25c448f962647607c05bd3bb284bacef'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: '1525cf3a5ea8a2d9ee540bb3e9320cf512061b95683bc73353b6694c1f3ed2c2'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
