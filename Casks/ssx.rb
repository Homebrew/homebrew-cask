cask :v1 => 'ssx' do
  version '06082006-2216'
  sha256 '34d904e909191e60e0b84ea43f177871ac4310c91af53e5c4cbff28c5dd29fcb'

  url "http://chris.schleifer.net/ssX/builds/ssX-#{version}.dmg"
  name 'soulseex'
  name 'ssX'
  homepage 'http://chris.schleifer.net/ssX/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ssX.app'
end
