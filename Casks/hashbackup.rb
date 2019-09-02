cask 'hashbackup' do
  version '2428'
  sha256 '6319c9376b452882b2fca940ecf439ea87c3f264a993ed29c14f3a668e341a57'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
