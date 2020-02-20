cask 'snowflake-snowsql' do
  version '1.2.0'
  sha256 '40093eef4ed2f0185cac1ea69c4fde666588255cce7b48af88747d78a9d8fd71'

  # sfc-repo.snowflakecomputing.com was verified as official when first introduced to the cask
  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://snowflake.com/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
