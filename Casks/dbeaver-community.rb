cask :v1 => 'dbeaver-community' do
  version '3.4.2'

  if Hardware::CPU.is_32_bit?
    sha256 'd6524f5b6ec75a919876b56d13503b3c14d985d807241161bb4d535b15f4ce26'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '032bdf9785372c6538bdca3adce70cab0eac3d4a419c9f708466f2d156776723'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
