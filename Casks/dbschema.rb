cask 'dbschema' do
  version '8.0.8'
  sha256 '8ed50395dd40eaca7b557588db2d04f4f6fb72cabebb30037613c809b6209777'

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'https://www.dbschema.com/'

  app 'DbSchema.app'
end
