cask :v1 => 'ionu' do
  version :latest
  sha256 :no_check

  url 'https://isis.ionu.nu/release/OSX/IONU.dmg'
  appcast 'https://isis.ionu.nu/release/OSX/appcast.xml'
  homepage 'https://ionu.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'IONU.app'
end
