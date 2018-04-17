cask 'mt32emu' do
  version '2.3.0,1.7.1'
  sha256 'd1f55f12ee641e8577154a49f24779bae2e708cd4b3c94edb17e8aaa39d8fb9c'

  url "https://downloads.sourceforge.net/munt/munt/#{version.before_comma}/OS%20X/MT32Emu-qt-#{version.after_comma}.dmg"
  appcast 'https://sourceforge.net/projects/munt/rss?path=/munt',
          checkpoint: 'e852a99d2091710ac167c30a87155d0a1e9f7eeb4d249346607c8c6d7f0b5a7e'
  name 'MT32Emu'
  homepage 'https://sourceforge.net/projects/munt/'

  app 'MT32Emu.app'
end
