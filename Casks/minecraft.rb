cask 'minecraft' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg'
  name 'Minecraft'
  homepage 'https://minecraft.net/'
  license :commercial

  app 'Minecraft.app'
end
