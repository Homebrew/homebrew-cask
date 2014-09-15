class Minecraft < Cask
  version 'latest'
  sha256 :no_check

  url 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg'
  homepage 'http://minecraft.net'

  app 'Minecraft.app'
end
