cask 'hashbackup' do
  version '2224'
  sha256 '912b4787d71d201efedb68b23ce1ac6a80da23fd9428418c4ceb0cda2cf294eb'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
