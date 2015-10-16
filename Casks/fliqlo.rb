cask :v1 => 'fliqlo' do
  version '1.6.1'
  sha256 'fe17a9d2004df7113ae8fab1bac075114c6aab779c3d68f614fad8f02363f547'

  url "http://fliqlo.com/download/fliqlo_#{version.delete('.')}.dmg", :referer => 'http://fliqlo.com/#about'
  name 'Fliqlo'
  homepage 'http://fliqlo.com/'
  license :gratis

  screen_saver 'Fliqlo.saver'
end
