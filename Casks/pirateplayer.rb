cask 'pirateplayer' do
  version '0.5.0-2'
  sha256 'e013d8e3402d12262475f7fc5cd557d5bafe9c6da92cbd2cd29ac15eaebe2e6a'

  url 'http://pirateplay.se/static/pirateplayer_archive/pirateplayer-0_5_0-2.dmg'
  appcast 'https://github.com/jackuess/pirateplayer/releases.atom',
          checkpoint: 'f61d3c35b95a7581000877e4294b6f38fefa60a16646684f32aa08f3372ceabe'
  name 'pirateplayer' # App's name is 'pirateplayer', not 'pirateplay'
  homepage 'https://pirateplay.se'
  license :gpl

  auto_updates true

  app 'pirateplayer.app'

  caveats 'Might require an updated version of ffmpeg to work with SVT. See http://pirateplay.se/pirateplayer/get.html for more info.'
end
