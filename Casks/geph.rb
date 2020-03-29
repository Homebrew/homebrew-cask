cask 'geph' do
  version '3.5.2'
  sha256 'd3ccf59c0aae2793f73b9aefd8fe289e985a7d4e50fa034f62bee0162c21e527'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
