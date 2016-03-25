cask 'fliqlo' do
  version '1.7.0'
  sha256 '06896669fe0ba54df2b6f89c069c08afe97237240a8c54b834198b86b7d15ac3'

  url "http://fliqlo.com/download/fliqlo_#{version.delete('.')}.dmg", referer: 'http://fliqlo.com/#about'
  name 'Fliqlo'
  homepage 'http://fliqlo.com/'
  license :gratis

  screen_saver 'Fliqlo.saver'
end
