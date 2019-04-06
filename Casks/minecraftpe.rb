cask 'minecraftpe' do
  version '1.9.2'
  sha256 'd249612ea83fdeafe13ae679773c94816bd3247001520112bc1dd583699574b2'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/MinecraftEducationEdition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition'
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
