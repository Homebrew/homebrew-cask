cask :v1 => 'littleipsum' do
  version '1.1.2'
  sha256 '5fa88e5cd2cc1c837ac3e9ff3a23ce1569835d56c71e2741243ce9f0424099db'

  url "http://littleipsum.com/download/LittleIpsum%20#{version}.zip"
  name 'LittleIpsum'
  appcast 'http://littleipsum.com/appCast',
          :sha256 => '2cd220fc152efa2491145231a3c142775987e6ab97348349ba9f0003183213c9'
  homepage 'http://littleipsum.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LittleIpsum.app'
end
