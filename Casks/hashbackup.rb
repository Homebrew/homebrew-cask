cask 'hashbackup' do
  version '2347'
  sha256 '571f48bd345ff70d3176b7780a6431c72cfbd245d945b2d77df0d6e34e41048b'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
