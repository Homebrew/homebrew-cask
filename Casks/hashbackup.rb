cask 'hashbackup' do
  version '2302'
  sha256 '3f03bd6b565e63a45b7955f83751ef80ecd6a856ef6d699cc5b84e4fcd268a01'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.i386.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.i386", target: 'hb'
end
