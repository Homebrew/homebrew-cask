cask 'dbschema' do
  version '8.0.6'
  sha256 '9cd6c6c484fe8e1c459bd3dba0a32362bc626bb37223f5b94153a043d24bc84b'

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'https://www.dbschema.com/'

  app 'DbSchema.app'
end
