cask :v1 => 'pangu8' do
  version '1.0.0'
  sha256 '910c2fcc6bbaea54f2944eb275de9674bc4613bf79f1f60dbf8ad0064269a252'

  url "http://dl.pangu.25pp.com/jb/Pangu8_v#{version}.dmg"
  homepage 'http://en.pangu.io/'
  license :unknown

  app 'pangu8.app'
end
