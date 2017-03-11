cask 'nbtexplorer' do
  version '2.0.3'
  sha256 'ae410b227d859cdf81dd8563c1686675c9c7835ea15369453e20f229e9a992ec'

  # hocuspocus.taloncrossing.com was verified as official when first introduced to the cask
  url "http://hocuspocus.taloncrossing.com/rii/NBTExplorer-Mac-#{version}.zip"
  name 'NBTExplorer'
  homepage 'http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-tools/1262665-nbtexplorer-nbt-editor-for-windows-and-mac'

  app 'NBTExplorer.app'
end
