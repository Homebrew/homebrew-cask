cask 'minecraftpe' do
  version '1-7-release-20181106'
  sha256 'fac08699bcff79a7deed436d9515ec5d0de687dcbd117a18f35e833e6dfcab16'

  # meedownloads.azureedge.net was verified as official when first introduced to the cask
  url "https://meedownloads.azureedge.net/#{version}/Minecraft_Education_Edition.dmg",
      referer: 'https://aka.ms/meeclientmacos'
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
