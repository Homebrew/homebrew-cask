cask :v1 => 'mcedit' do
  version '1.2.5.0'
  sha256 '2932e5c96c2d3d9ec77b3b71a2e4596f5f96edd820e316921dfedcfe72bafc5c'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  name 'MCEdit-Unified'
  homepage 'http://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
