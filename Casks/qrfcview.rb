cask :v1 => 'qrfcview' do
  version '20121106'
  sha256 '925cc6afc143f234a32e2f088cf3e4de6357e196edd38df30bc3f9b34074dccc'

  url "https://github.com/downloads/saghul/qrfcview-osx/qRFCView-#{version}-1.dmg"
  homepage 'https://saghul.github.io/qrfcview-osx'
  license :oss

  app 'qRFCView.app'
end
