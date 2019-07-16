cask 'hashbackup' do
  version '2367'
  sha256 'd26d0e0cff93d92dd867c643c9a478e6de99bd443c7642b5ef5ef8a28add71b7'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
