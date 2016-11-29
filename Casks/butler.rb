cask 'butler' do
  version '4.1.22'
  sha256 '8fd75b4a060b92faa553286dc9f52b3d9979b57ae2cda905cc504d0d2512a094'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/butlercast.xml',
          checkpoint: '22df27df37fa0b45e7bbef6d961a8b7e020041d441a9081e93a53269155420c8'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
