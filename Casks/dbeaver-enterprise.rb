cask :v1 => 'dbeaver-enterprise' do
  version '3.4.5'

  if Hardware::CPU.is_32_bit?
    sha256 '6a059d046964194e516fce67df227336ce2554922267d358297f65d893595b55'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'e80d4d4476233b905304bb91bc8edb3a33514280659b55ab6aebf62ac6dc693c'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
