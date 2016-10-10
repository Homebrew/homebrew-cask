cask 'avidemux' do
  version '2.6.14'
  sha256 '9f9bc15e33bdf2e14f788d8017cfa7fc87d9f364186cdfc539ef1af8aeeba641'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_EC_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: 'a8205fa1028b0d77549b899ee33987cb57aaa94cf36e9c9953ef74eced55cd5e'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
