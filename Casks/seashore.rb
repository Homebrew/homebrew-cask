cask 'seashore' do
  version '2.4.13'
  sha256 '5a93f113f77b04bb39ae4ea4a868d95796944819a22b2dd2df54821069bc0fe0'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
