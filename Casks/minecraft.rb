cask 'minecraft' do
  version :latest
  sha256 :no_check

  # mojang.com was verified as official when first introduced to the cask
  url 'https://launcher.mojang.com/download/Minecraft.dmg'
  name 'Minecraft'
  homepage 'https://minecraft.net/'
  license :commercial

  app 'Minecraft.app'

  zap delete: [
                '~/Library/Caches/com.mojang.minecraftlauncher',
                '~/Library/Caches/com.mojang.minecraftlauncherupdater',
                '~/Library/Application Support/Minecraft Launcher',
              ]
end
