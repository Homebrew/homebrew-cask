cask 'houdahspot' do
  version '4.3'
  sha256 '9f6f1a1d60880ea629eb9b9bcbd2f29136452325a11598f3c910bb25a4f653e1'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'befa8f693c6688bc216a0d4153eb98c47a5133a1e01687375a280f57482bb7cc'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
