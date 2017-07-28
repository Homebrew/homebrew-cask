cask 'cevelop' do
  version '1.8.0-201707131430'
  sha256 '5317b246223334c3c46a82ca35df852b518b7ecdc6ff715c3ff77124c2642a89'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/',
          checkpoint: '58bcd0acc6a5ea02c2d34834997f87379f2fc1dd8d1fa8017e395c6ba6875553'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
