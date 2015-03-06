cask :v1 => 'dbeaver-enterprise' do
  version '3.1.5'

  if Hardware::CPU.is_32_bit?
    sha256 '5e7ebc0b2f2a3ebb25eba0ff9032fa0bc2ca78354cc8bd2fe2b85262da73df54'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '0ddf0c6071f3f4c12a1332ecef9afddcbbcd1e8903f0994a71c9d3b061ab4397'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
