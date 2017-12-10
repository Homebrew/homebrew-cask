cask 'dbschema' do
  version '7.6.4'
  sha256 'a19568384b2ef5c6cb741d3b93c3448ef379b94016fb8e4ae21e82a3bfa72810'

  url "http://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'http://www.dbschema.com/'

  app 'DbSchema.app'
end
