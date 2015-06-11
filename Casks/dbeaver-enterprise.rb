cask :v1 => 'dbeaver-enterprise' do
  version '3.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '9ca8a74d2d0aa96346cc621e914026e5f238d1d3bbe81f7226d477fc5cbdd1af'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'a5b4d08d035e36e7d9d10ad2ecc07992f8cdacc830d881dc3542b25b6276a4f9'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
