cask 'geph' do
  version '3.6.2'
  sha256 'f46a62570b752b98d7f708b57e50a9d08c9729f56c47056c0fa0f1814d57aefa'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
