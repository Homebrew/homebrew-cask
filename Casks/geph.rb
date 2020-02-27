cask 'geph' do
  version '3.4.4'
  sha256 '8f78448841afebb1e62114c2679d33709231b5c59ec15bd4c500c92f00536cd5'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
