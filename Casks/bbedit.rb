class Bbedit < Cask
  version '10.5.12'
  sha256 '1f63ec3953580d33d0407522e29c0ad28fb281f84edf191fd0d54170c48c88ec'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '4ce2f9c44758a42b4c9bad5be5311861a23492ec41974fdb05f6e0ba5db33e65'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
