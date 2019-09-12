cask 'craftos-pc' do
  version '2.0'
  sha256 '3fc4d58a1d65a6a93955a2779a6fc11e3bf7a4a17aecd62f0ad1f49f8a0b29d8'

  url "https://github.com/MCJack123/craftos2/releases/download/v#{version}/CraftOS-PC.dmg"
  appcast 'https://github.com/MCJack123/craftos2/releases.atom'
  name 'CraftOS-PC'
  homepage 'https://github.com/MCJack123/craftos2/'

  app 'CraftOS-PC.app'
end
