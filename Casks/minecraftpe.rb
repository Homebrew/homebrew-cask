cask 'minecraftpe' do
  version :latest
  sha256 :no_check

  # aka.ms/meeclientmacos was verified as official when first introduced to the cask
  url 'https://aka.ms/meeclientmacos'
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net/'

  depends_on macos: '>= :sierra'

  app 'minecraftpe.app'
end
