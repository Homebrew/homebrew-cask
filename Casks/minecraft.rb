cask :v1 => 'minecraft' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg'
  name 'Minecraft'
  homepage 'https://minecraft.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minecraft.app'
end
