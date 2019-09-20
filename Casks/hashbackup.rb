cask 'hashbackup' do
  version '2442'
  sha256 '67cdf388f39236eb98dc8bf41917a8c8ea2f331556b608710c9fa5a6cc7fa639'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
