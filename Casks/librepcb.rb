cask 'librepcb' do
  version '0.1.4'
  sha256 '33f48443098d05aca3c3e7958744d193f9d676f5f962c33726194012d8f87c1d'

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-x86_64.dmg"
  appcast 'https://download.librepcb.org/releases'
  name 'LibrePCB'
  homepage 'https://librepcb.org/'

  app 'librepcb.app'

  zap trash: '~/Library/Saved Application State/com.yourcompany.librepcb.savedState'
end
