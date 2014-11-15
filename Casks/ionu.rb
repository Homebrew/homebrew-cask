cask :v1 => 'ionu' do
  version :latest
  sha256 :no_check

  url 'https://isis.ionu.nu/release/OSX/IONU.dmg'
  appcast 'https://isis.ionu.nu/release/OSX/appcast.xml'
  homepage 'https://ionu.com'
  license :unknown

  app 'IONU.app'
end
