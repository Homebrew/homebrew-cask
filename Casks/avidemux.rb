cask 'avidemux' do
  version '2.6.20'
  sha256 '16e23d01a71b431c2a80d7c0c7d10c6e4cbe5eb188e86805428fe0c2a4c1962a'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '91c1e993f3113b394bb56191613269558116a53bf762cc2d449af7f9b281cb54'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
