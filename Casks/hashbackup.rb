cask 'hashbackup' do
  version '2262'
  sha256 'fe7a6bf3c972c62a71289f5354809468560fd23e991817adffe9cb2703eddc69'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
