cask :v1 => 'ssx' do
  version '06082006-2216'
  sha256 '34d904e909191e60e0b84ea43f177871ac4310c91af53e5c4cbff28c5dd29fcb'

  url "http://chris.schleifer.net/ssX/builds/ssX-#{version}.dmg"
  homepage 'http://chris.schleifer.net/ssX/index.cgi/index.html'
  license :unknown    # todo: improve this machine-generated value

  app 'ssX.app'
end
