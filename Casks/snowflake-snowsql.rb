cask 'snowflake-snowsql' do
  version '1.1.62'
  sha256 'c6135f011524527361230f5fc9c911fcb673c56ee6c9bc5bf01e35a68380f4cf'

  # sfc-snowsql-updates.s3.us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://sfc-snowsql-updates.s3.us-west-2.amazonaws.com/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
