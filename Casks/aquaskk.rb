cask 'aquaskk' do
  version '4.3.5'
  sha256 '111825f13c0757fc98e669ee149bf41d343efedfc9808573f996bf1e5d052309'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: '8a40187b9e784fe8be4bf5d0b03177282ea24f1a9d29594f32315e54c900f9ac'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'
  license :gpl

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
