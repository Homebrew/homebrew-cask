cask 'snowflake-snowsql' do
  version '1.1.21'
  sha256 '704d2b1b0f0e16ac0565fc14342dc5af7bc21e9ffa75575cef9e2c734dd0876d'

  # s3-us-west-2.amazonaws.com/sfc-snowsql-updates/bootstrap was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/sfc-snowsql-updates/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
