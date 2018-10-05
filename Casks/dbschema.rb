cask 'dbschema' do
  version '8.0.8'
  sha256 'fd961b6dc4b46dbc3942fc9250ce9c4e9486bb267ec1f55414ec4f6a555d9a99'

  url "https://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'https://www.dbschema.com/'

  app 'DbSchema.app'
end
