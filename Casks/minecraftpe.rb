cask 'minecraftpe' do
  version '1.12.60'
  sha256 '3e7b6460298c5a05aefbed892fa040bbda141ae48c48fc344c7f7689c21b852a'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition',
          configuration: version.chomp('.0')
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
