cask :v1 => 'aquaskk' do
  version '4.3.3'
  sha256 '9a09d2fb8dcbf59494926fc1762a1dc16dfb94f27827659a0fdc68620a65adae'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall :pkgutil => 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
