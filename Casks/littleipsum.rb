cask :v1 => 'littleipsum' do
  version '1.1.2'
  sha256 '5fa88e5cd2cc1c837ac3e9ff3a23ce1569835d56c71e2741243ce9f0424099db'

  url "http://littleipsum.com/download/LittleIpsum%20#{version}.zip"
  homepage 'http://littleipsum.com'
  license :unknown

  app 'LittleIpsum.app'
end
