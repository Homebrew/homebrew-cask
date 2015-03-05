cask :v1 => 'camed' do
  version '3.1.1'
  sha256 'c9088796b6f5cee228341e2ec6c2ee0ff3e3a506ff0dde3643865ccbc9c4f744'

  url "http://downloads.sourceforge.net/sourceforge/camprocessor/CAMEd-#{version}-macosx-cocoa-x86_64.tar.gz"
  homepage 'http://camprocessor.sourceforge.net/'
  license :oss

  app "CAMEd-#{version}/CAMed.app"
end
