cask 'hashbackup' do
  version '2295'
  sha256 'e3930f5f49b742faeb5295b88fed4b42cdbe0cb2c7ddb0ce274101bfdc3203e1'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
