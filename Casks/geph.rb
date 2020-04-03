cask 'geph' do
  version '3.5.4'
  sha256 'f4ef8fe1bc5e194ad34ecd917f7e6f4a7229d89fd181342561135d55fd71e145'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
