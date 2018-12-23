cask 'fman' do
  version '1.5.2'
  sha256 '7f5f50602b514bea2dd4d1e3893f1b8b5b214ffe786ec28079ea9449512a0b51'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
