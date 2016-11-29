cask 'orange' do
  version '3-3.3.8'
  sha256 '11566c7233a0d9d64d115cebe6b1996358cba7a5ed2b37a5e82d85b32cb5c335'

  url "http://orange.biolab.si/download/files/Orange#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
