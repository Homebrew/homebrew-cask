cask :v1 => 'ionu' do
  version :latest
  sha256 :no_check

  url 'https://prod1.ionu.com/release/OSX/IONU.dmg'
  appcast 'https://prod1.ionu.com/release/OSX/appcast.xml'
  name 'IONU'
  homepage 'https://ionu.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'IONU.app'
end
