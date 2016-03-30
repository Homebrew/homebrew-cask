cask 'qrfcview' do
  version '20121106'
  sha256 '925cc6afc143f234a32e2f088cf3e4de6357e196edd38df30bc3f9b34074dccc'

  # github.com/downloads/saghul/qrfcview-osx was verified as official when first introduced to the cask
  url "https://github.com/downloads/saghul/qrfcview-osx/qRFCView-#{version}-1.dmg"
  name 'qRFCView'
  homepage 'https://saghul.github.io/qrfcview-osx'
  license :gpl

  app 'qRFCView.app'
end
