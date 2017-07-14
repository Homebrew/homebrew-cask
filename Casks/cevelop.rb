cask 'cevelop' do
  version '1.8.0-201707131430'
  sha256 '5317b246223334c3c46a82ca35df852b518b7ecdc6ff715c3ff77124c2642a89'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/',
          checkpoint: 'c5873f22b5b702dfd01b0541ba18dbf354d42d71f1ab45e69e6f41ae5e3c7fe0'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
