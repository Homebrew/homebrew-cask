cask 'hashbackup' do
  version '2423'
  sha256 '3b29b18b17d74fa501df6473cf84f2577648b62f837730bcbcb0d8b4b8dd0911'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
