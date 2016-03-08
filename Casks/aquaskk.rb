cask 'aquaskk' do
  version '4.3.4'
  sha256 'fd29284c76ddc361506ad887be3868bc8e020d6424d818e5365d7d9148d19fcc'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: 'd5858e86a4cac5e0380083242d40be65ac5eb757048e88863dbf265bc236ee14'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
