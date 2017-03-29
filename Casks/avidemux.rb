cask 'avidemux' do
  version '2.6.19'
  sha256 '606e239b7833fdb4e86422979189c31942ced034f8d8fd2cde0ee4cff7de13eb'

  # sourceforge.net/avidemux was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Sierra_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux',
          checkpoint: '48d5f951633deea796cee416eec784b6f338923abba559a74bed937cca40e5dd'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux#{version.major_minor}.app"
end
