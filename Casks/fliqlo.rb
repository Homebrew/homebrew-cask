cask :v1 => 'fliqlo' do
  version '1.5.2'
  sha256 '132f760525e2b1956e708c99676b1f1a6d30c10d64eda912a669c0a25c38ad46'

  url "http://fliqlo.com/download/fliqlo_#{version.gsub('.','')}.dmg", :referer => 'http://fliqlo.com/#about'
  homepage 'http://fliqlo.com/'
  license :unknown

  screen_saver 'Fliqlo.saver'
end
