cask 'hashbackup' do
  version '2118'
  sha256 '0b0090f91ee179b833e52cb930d2a4f52c25b7b25ff381abf499f92c8876a8a4'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
