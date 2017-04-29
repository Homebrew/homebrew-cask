cask 'doomsday-engine' do
  version '2.0.0'
  sha256 '4694061347d8f14880de8e5973816424263552b28773596116a410c7e3c721f1'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss',
          checkpoint: 'a0f2b88741910a1dec68fb19e6ade3bbb117553af312f09d673bc7081823f8f9'
  name 'Doomsday Engine'
  homepage 'http://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
