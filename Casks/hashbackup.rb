cask 'hashbackup' do
  version '2298'
  sha256 '9747604a5350e8a95ea091de3d7303b2d759ffd9994063123e0b38ba47a25587'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.i386.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.i386", target: 'hb'
end
