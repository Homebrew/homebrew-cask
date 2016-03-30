cask 'krita' do
  version '2.9.11.0'
  sha256 '0be9babe1c08678780c66b9039c6fdde1e67875ddb662c17eaf87ff52fe314c2'

  # kde.org is the official download host per the vendor homepage
  url "https://files.kde.org/krita/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'
  license :gpl

  app 'Krita.app'
end
