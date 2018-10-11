cask 'ammonite' do
  version '1.16.1'
  sha256 '96f5b078ee1ded66da73d45879d469759a0d0f8ad6264048fa71b542a73bda85'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
