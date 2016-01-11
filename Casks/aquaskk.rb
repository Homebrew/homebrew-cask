cask 'aquaskk' do
  version '4.3.4'
  sha256 'fd29284c76ddc361506ad887be3868bc8e020d6424d818e5365d7d9148d19fcc'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall :pkgutil => 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
