cask 'mudlet' do
  version '3.15.0'
  sha256 '825c8f2f043e0d319ca1cb2a6d155bbbf7823db6b78eb505f6cdc09efa8f606a'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
