cask :v1 => 'dbeaver-community' do
  version '3.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '78bf312ff90ae9d92e5b2530a132d30e8c9545211c9f451e2ac97b943cfc3c71'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '2ead83a54137a2288bb48fd7261a976fffec24814e747e4bc8f6fc8b738a50c6'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
