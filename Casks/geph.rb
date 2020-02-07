cask 'geph' do
  version '3.2.7'
  sha256 '28e95553dd2d1ecf28221d3ee05e24d7afbdf25925d5346a80ac2ec079f6f205'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
