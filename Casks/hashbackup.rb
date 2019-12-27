cask 'hashbackup' do
  version '2461'
  sha256 '7a8a22999b22ebda97943f968ef9303555dacd2f0142a77a5d41c4ccc67988e8'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
