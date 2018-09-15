cask 'dbschema' do
  version '8.0.7'
  sha256 '4b59d2123762264b45b3ba35cdfcaa543680230d8f3ee1c1f7426a6ca47732b4'

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'https://www.dbschema.com/'

  app 'DbSchema.app'
end
