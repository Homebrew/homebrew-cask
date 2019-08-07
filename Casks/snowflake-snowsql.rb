cask 'snowflake-snowsql' do
  version '1.1.67'
  sha256 '0dfceecc8cf2f86319bae3222983ac54984bdd127c2bd8eb6ae9fe67b994b41e'

  # sfc-snowsql-updates.s3.us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://sfc-snowsql-updates.s3.us-west-2.amazonaws.com/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
