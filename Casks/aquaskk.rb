cask 'aquaskk' do
  version '4.4.4'
  sha256 '99febc55d2e7c923676a5bf1a9b9a2f38732f6ad4682a50b8090a0f177c981f8'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: '9337d63f73be4a88446eb530e85e31951d8eba61dca942a86138b9fb3357ffa5'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end
