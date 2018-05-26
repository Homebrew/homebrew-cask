cask 'houdahspot' do
  version '4.3.7'
  sha256 'c36c9cbcf05b999ee172f33b670559787ce1d4b5965a1bcd610afafd40d43977'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '0ea107778b19e77b19ca84bae31b003c19b6254aca0792e7aaab8e0c80338ffc'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
