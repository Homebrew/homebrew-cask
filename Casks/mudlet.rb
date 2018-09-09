cask 'mudlet' do
  version '3.13.0'
  sha256 '9fc649f1de218c844bcdc8765bda55eb4a93265a7d8348095661a88b75694603'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
