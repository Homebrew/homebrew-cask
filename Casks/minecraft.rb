cask :v1 => 'minecraft' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg'
  homepage 'http://minecraft.net'
  license :unknown    # todo: improve this machine-generated value

  app 'Minecraft.app'
end
