cask 'geph' do
  version '3.5.1'
  sha256 '684daa807fe0813cf9f7d85a32c6d2bb90c7b033131ff8c18311d2ea3bb8244c'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
