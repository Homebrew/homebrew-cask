cask 'hashbackup' do
  version '2447'
  sha256 '54ce5fc645bdc77109332f2cd5336d96637e20610161b7e15125ccb6499f77b4'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
