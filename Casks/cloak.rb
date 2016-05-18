cask 'cloak' do
  version '2.0.16'
  sha256 '3c7b74b62ece81b45bbca3f119b3539fb44790cc0d760d9077a93acc2c28125f'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: '6138caa91bc0413359439e60b7a50d0aea1f381b0f700ad59f402dc5f1193499'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
