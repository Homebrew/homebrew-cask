cask 'geph' do
  version '3.4.3'
  sha256 '4ea38e14c7df360c3879a4f15b31a3666eaaeeecf1f4f2750d67413dfafbfb4b'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
