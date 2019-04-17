cask 'hashbackup' do
  version '2248'
  sha256 '6941ac7d7db5fed62a0dd90016a1a657d13e4eddbc2a1dbdf74338062223eb42'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
