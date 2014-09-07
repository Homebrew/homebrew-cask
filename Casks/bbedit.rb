class Bbedit < Cask
  version '10.5.12'
  sha256 '1f63ec3953580d33d0407522e29c0ad28fb281f84edf191fd0d54170c48c88ec'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml'
  homepage 'http://www.barebones.com/products/bbedit/'

  link 'BBEdit.app'
end
