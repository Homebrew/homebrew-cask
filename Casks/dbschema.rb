cask 'dbschema' do
  version '7.5.2'
  sha256 'ce1ca78bad8aa817ab899bf57de1d4e215ed172d72773beea37f6126609c8993'

  url "http://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'http://www.dbschema.com/'

  app 'DbSchema.app'
end
