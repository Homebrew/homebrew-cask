cask 'mt32emu' do
  version '2.2.0'
  sha256 'f2a8ccd9a5b94a652a70393ac0d4873ec4f4056ed7b2530a65f92dfb5a3a1f25'

  url "https://downloads.sourceforge.net/munt/munt/#{version}/OS%20X/MT32Emu-qt-1.6.0.dmg"
  appcast 'https://sourceforge.net/projects/munt/rss?path=/munt',
          checkpoint: '0781033dd0aaa949195a56110b52f8622d67ad041b4c79e06e1ba5acf794abc7'
  name 'MT32Emu'
  homepage 'https://sourceforge.net/projects/munt/'

  app 'MT32Emu.app'
end
