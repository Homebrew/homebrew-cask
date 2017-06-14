cask 'dbschema' do
  version '7.5.1'
  sha256 'cf7450e331f80edeb56f1f4365ddcdf577a6694bd3b37e8ff4003815a65359ef'

  url "http://www.dbschema.com/download/DbSchema_macos_#{version.dots_to_underscores}.tgz"
  name 'DbSchema'
  homepage 'http://www.dbschema.com/'

  app 'DbSchema.app'
end
