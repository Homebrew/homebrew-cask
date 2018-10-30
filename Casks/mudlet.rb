cask 'mudlet' do
  version '3.14.1'
  sha256 'dedd4d63067e5f343a5ef3072d773e28ad8cd32913b6d18d9bf6b199270c275f'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
