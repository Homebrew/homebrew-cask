cask 'minecraftpe' do
  version '1.12.62'
  sha256 '07dbbe77b9f213fab5513941a2a06d29487196c6c1b730666c522c60736846a2'

  # meedownloads.azureedge.net/ was verified as official when first introduced to the cask
  url 'https://meedownloads.azureedge.net/retailbuilds/MacOS/Minecraft_Education_Edition.dmg'
  appcast 'https://minecrafteducation.zendesk.com/hc/en-us/articles/360001447967-What-s-New-in-Minecraft-Education-Edition',
          configuration: version.chomp('.0')
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
