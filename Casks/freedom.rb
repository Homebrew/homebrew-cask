cask 'freedom' do
  version '2.2.1'
  sha256 'ca3bea6f578f1043eff7e33b59bd666473ec6bd73d7a2b21d28760cf68fb8682'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
