cask 'mudlet' do
  version '4.1.0'
  sha256 '0530a26ea7e4f3ecfcee0d2caa5b6184ef2cbb4da367946070c8e5730d816648'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
