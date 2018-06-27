cask 'minecraft-ed' do
  version :latest
  sha256 :no_check

  url "https://aka.ms/meeclientmacos"
  name 'Minecraft Education Edition'
  homepage 'https://education.minecraft.net'

  depends_on macos: '>= 10.12'

  app 'minecraftpe.app'
  
end
