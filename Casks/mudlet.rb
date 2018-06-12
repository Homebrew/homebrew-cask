cask 'mudlet' do
  version '3.10.2'
  sha256 'f0b23ece582bfd8d45819e1185792f1f1809c5c894c0b4e652bf7e234b8651eb'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
