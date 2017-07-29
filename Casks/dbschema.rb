cask 'dbschema' do
  version '7.6.0'
  sha256 'e33278c787a7560532d3623bf3c89b349ce9d13df561795f2ac87566d1bf81df'

  url "http://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'http://www.dbschema.com/'

  app 'DbSchema.app'
end
