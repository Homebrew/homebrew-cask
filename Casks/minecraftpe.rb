cask 'minecraftpe' do
  version '1.12.5'
  sha256 '27e60759e560b18674a2c4e758e30cb3b6f98a46e0e9a9620bd8f859aac94f7a'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition',
          configuration: version.chomp('.0')
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
