cask :v1 => 'aquaskk' do
  version '4.2.7'
  sha256 'ce0e4dab61b68ce832b700ec061f364fcddeb13fd64e84b7fb6e79aa01dd60a1'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall :pkgutil => 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
