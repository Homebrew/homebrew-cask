cask 'hashbackup' do
  version '2282'
  sha256 '7a699886fdc4338ac05522feb194f5010caefbfbff559fd51478bca819fc2647'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
