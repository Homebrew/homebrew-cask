cask 'mkchromecast' do
  version '0.2.9'
  sha256 '68e3f42d3a694c0b4d4f4cd2cc2ac1bd83626eda864042e99e0fbcfee773a28d'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '5d04a7f7343e3d1a4a51ebedc06c3a151c85fe1120e3196b23dbcfc932cc945e'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
