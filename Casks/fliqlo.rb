cask :v1 => 'fliqlo' do
  version '1.6.0'
  sha256 '4a6957eb4664f2fd04c2e8c8da02e6daa68f2c55b7b7afe446cd98a44ba5472d'

  url "http://fliqlo.com/download/fliqlo_#{version.gsub('.','')}.dmg", :referer => 'http://fliqlo.com/#about'
  homepage 'http://fliqlo.com/'
  license :gratis

  screen_saver 'Fliqlo.saver'
end
