cask 'mt32emu' do
  version '2.1.0'
  sha256 'c9c39386ac04a97a29d7ec661021e43b2b365bbd7dcecb1edd7de135182b20bc'

  url "https://downloads.sourceforge.net/munt/munt/#{version}/OS%20X/MT32Emu-qt-1.5.0.dmg"
  appcast 'https://sourceforge.net/projects/munt/rss?path=/munt',
          checkpoint: '372b2206914571d17f480d2cc11dc718bbf4d134d9992f1bd592c91396288eba'
  name 'MT32Emu'
  homepage 'https://sourceforge.net/projects/munt/'

  app 'MT32Emu.app'
end
