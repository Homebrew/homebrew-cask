cask 'minecraftpe' do
  version '1-7-release-20181106'
  sha256 '0aa5477a9b04d08dc18fbc873ed06e5947e739b26d5d338bc914bad324974f4c'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url "https://meedownloads.azureedge.net/#{version}/Minecraft_Education_Edition.dmg", referer: 'https://aka.ms/meeclientmacos'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://aka.ms/meeclientmacos'
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
