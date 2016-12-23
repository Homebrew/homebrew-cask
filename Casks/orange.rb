cask 'orange' do
  version '3.3.9'
  sha256 '4f10aac5a0233f5aaaa0a69d5de50c0c602565be7cd02a6070d1bb0eadb098ed'

  url "http://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
