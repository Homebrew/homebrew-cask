cask 'minecraftpe' do
  version '1.9.2'
  sha256 'a86086613f4515902eaf3149751ee6a6677074b784f294ef54fe9c16204c931f'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/MinecraftEducationEdition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition'
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
