cask 'hashbackup' do
  version '2164'
  sha256 '5e04c03e23a8e3b5036d118284fcd94a14fbcbda173799b1c3807cba73d5e9f6'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
