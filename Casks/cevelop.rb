cask 'cevelop' do
  version '1.5.0-201607061232'
  sha256 'c8b53ccd1123dc399e9733e085ba9aa92024596882eb45a7548e91305e7d1bc9'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
