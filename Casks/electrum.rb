cask 'electrum' do
  version '2.7.9'
  sha256 '584a85fd10a6da67afcb2bbaa8b9af8da4e0fd780d1b1621dc5505ff395f8071'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
