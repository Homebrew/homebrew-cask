cask 'doomsday-engine' do
  version '2.0.2'
  sha256 'dfd6e8a0399bc5a1a828b43254160c5523edbe74077fd0668b9f3bc6637be45a'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss',
          checkpoint: 'cc90b05250432b8e38a3637fe15917cd4cc66662916e04fea7ad7f0c21db76db'
  name 'Doomsday Engine'
  homepage 'https://dengine.net/'

  app 'Doomsday.app'
  app 'Doomsday Shell.app'
end
