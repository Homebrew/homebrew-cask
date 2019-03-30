cask 'minecraftpe' do
  version '1.9.1'
  sha256 '449f633e9a5e08c79ceb9e9cbbd7749872d68ba35c23e344b10ffd5f684c1aea'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/MinecraftEducationEdition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition'
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
