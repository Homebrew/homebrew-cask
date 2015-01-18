cask :v1 => 'qgroundcontrol' do
  version '2.2.1'
  sha256 '4a35ac5051a408a9aaef9127c27967fed15232a6b91ea9f93341e0fd4805f1c8'

  # latestfiasco.com is the official download host per the vendor homepage
  url "http://latestfiasco.com/ftp/QGroundControl-Stable-V#{version}.dmg"
  homepage 'http://qgroundcontrol.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'qgroundcontrol.app'
end
