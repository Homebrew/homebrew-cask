cask 'hashbackup' do
  version '2199'
  sha256 'df03aaffd633d671db2279dc4c1ae67bfe5a99363df5af5bdecf15c0a9d6ba2b'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
