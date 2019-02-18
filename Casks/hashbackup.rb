cask 'hashbackup' do
  version '2143'
  sha256 'e18145cafaed6ffd0d75ab7c4ecb03c4ddf1800a75a7aeb44b6f89bab6fb6769'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
