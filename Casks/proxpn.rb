cask :v1 => 'proxpn' do
  version '4.0.3'
  sha256 'ef4f436a6ce68f533f25ad9bf9c2b2616875f65d05abf9b0b884983f44ed7647'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'https://www.proxpn.biz/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
