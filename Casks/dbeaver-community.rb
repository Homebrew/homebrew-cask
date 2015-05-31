cask :v1 => 'dbeaver-community' do
  version '3.4.0'

  if Hardware::CPU.is_32_bit?
    sha256 '1be89d4e52067293894d707577675315db0d045968df1a6a00e048788b6d480a'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '7ec5ff7a80c25728e2b23b312d8b8a8f305dca6980604d5cb46bf3e680e56211'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
