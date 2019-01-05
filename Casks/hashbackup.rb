cask 'hashbackup' do
  version '2125'
  sha256 '462a6f5c1d0194712ea2c6ebba0480fdbe17aafaf3735f009595e0bdf98daf6c'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
