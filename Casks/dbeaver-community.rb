cask :v1 => 'dbeaver-community' do
  version '3.1.2'

  if Hardware::CPU.is_32_bit?
    sha256 'f5b2b754903baf4b7aca1e68d6d06df07a790a244d974c0b088bc802bfdb233f'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 'c838b298cccd49d1dc8e7c298d25bdb2200db6d23cd5f0e0874d2c5b8bebc30f'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
