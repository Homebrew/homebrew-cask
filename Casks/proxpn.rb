cask 'proxpn' do
  version '4.3.4'
  sha256 'd0d5476bec2f5f6f894d57087d628284d7f0f02ef8b98e23630765010933898b'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'http://www.proxpn.biz/updater/appcast.rss',
          checkpoint: 'ca9606ee9082ea2d1bbacae83d9142079cc58ff63ec95ad0feba4a741734e0dd'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
