cask 'houdahspot' do
  version '4.3.5'
  sha256 'f6d585bb73e39a6285c2958a5d12358e4b8c4021911a8a480124275a5d9c3299'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '5b8d4d8d6df36221c26f42e7c1314384804a02d2b10d1a412663a6508b28c250'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
