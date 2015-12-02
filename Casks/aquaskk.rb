cask :v1 => 'aquaskk' do
  version '4.3.2'
  sha256 '1294b4e02b563410796737c86467cd321f87cc85e359a132c26ea0a2f1a344fe'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall :pkgutil => 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
