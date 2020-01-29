cask 'dbschema' do
  version '8.2.7'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  appcast 'https://www.dbschema.com/changelog.txt'
  name 'DbSchema'
  homepage 'https://www.dbschema.com/'

  app 'DbSchema.app'
end
