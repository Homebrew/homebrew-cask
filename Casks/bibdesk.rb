class Bibdesk < Cask
  version '1.6.3'
  sha256 '30dcf97dbf1256fbc49e98ff67b7e510ea8b90bcefb4f919d0b2ac8aa8f695a8'

  url "https://downloads.sourceforge.net/project/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml'
  homepage 'http://bibdesk.sourceforge.net/'

  link 'BibDesk.app'
end
