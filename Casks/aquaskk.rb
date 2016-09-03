cask 'aquaskk' do
  version '4.4.1'
  sha256 '2f32925776f5ee57239f31df24f7edccf4bd9b6e8f997070ff4609b25e11dc6c'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: '8dce309c1b9a0c7ba2597b08cee0f5578a571ad37dfdfcb180cdcb55c0de6bff'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
