cask 'cevelop' do
  version '1.12.1-201907101456'
  sha256 '4d1e4737a5ff1373e213d57472c29d270b02edee30e5821dd61fbd3b7bf1945a'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
