cask 'dbschema' do
  version '7.6.6'
  sha256 '1371ed695c111a387a5fab90c8610b8a32382fe705f459968933205d1c8638ce'

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'https://www.dbschema.com/'

  app 'DbSchema.app'
end
