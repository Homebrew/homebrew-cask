cask 'minecraftpe' do
  version '1.12.0'
  sha256 '6d3ae4aa8ccae09bb3323515341da1082b11477e0b2682c776f786b7cd0ed1a0'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/MinecraftEducationEdition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition',
          configuration: version.chomp('.0')
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
