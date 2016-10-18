cask 'apple-events' do
  version '0.5.2'
  sha256 '08aaf1476a33e4dc13b00f130855e75ec0d2a1e79ce864038534d852a5446ce9'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: 'd7ca40878e8a8ed4a7d5423374d102004769ff9ac3fb67ff3d5bd2d44670ffff'
  name 'Apple Events'
  homepage 'https://github.com/insidegui/AppleEvents'

  auto_updates true

  app 'Apple Events.app'
end
