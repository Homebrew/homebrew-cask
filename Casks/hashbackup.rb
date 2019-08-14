cask 'hashbackup' do
  version '2406'
  sha256 'eeaab4608dee355afc0730b6a06a733352630eab2c29e1bf208de4e8d374bde7'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
