cask 'aircall' do
  version '1.4.1'
  sha256 '4843613cb55bfc9af16d04a7e678a6fb3d8c031c52209e3d94f618184636d586'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: 'c235df2beef18673343c81193fc66f03068a954967e9dd2b32662102c0b9191e'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
