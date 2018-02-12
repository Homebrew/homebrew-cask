cask 'cevelop' do
  version '1.9.0-201802051526'
  sha256 'e2236ab25b8af60d8328c825942e1f77dd8ecae5891fb2b9e57ea739574fe493'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/',
          checkpoint: '028df297be15a0d8f7078370fa55c9e23401868e3893433b36be2aeac4c285e6'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
