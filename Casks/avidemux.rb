cask 'avidemux' do
  version '2.6.17'
  sha256 '7c9b652555eb1efd72df7a3b0d71b89c48fa3ae82b18d9c26ff15e1c8f4e41f5'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: 'c245e77888dd8c7610a289085c6f638fdca5136c8245f41b82e0860bb3f2164c'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
