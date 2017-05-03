cask 'avidemux' do
  version '2.6.20'
  sha256 '16e23d01a71b431c2a80d7c0c7d10c6e4cbe5eb188e86805428fe0c2a4c1962a'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '90ffe73a0a460f9923b44e328259878ae538649f2b483167a6d074a92e6bdd53'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
