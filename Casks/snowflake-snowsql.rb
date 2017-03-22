cask 'snowflake-snowsql' do
  version '1.1.22'
  sha256 '212c0bdb9648fdc106756db41185da451c4d07b6b93b739cb0134f50862eac63'

  # s3-us-west-2.amazonaws.com/sfc-snowsql-updates/bootstrap was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/sfc-snowsql-updates/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
