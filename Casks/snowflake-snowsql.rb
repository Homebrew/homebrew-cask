cask 'snowflake-snowsql' do
  version '1.1.84'
  sha256 '9ab879bed19bdeb99dd0d6aaad3cd03e61c2cd9004f653f54450375f59d758ec'

  # sfc-snowsql-updates.s3.us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://sfc-snowsql-updates.s3.us-west-2.amazonaws.com/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  appcast 'https://sfc-snowsql-updates.s3.us-west-2.amazonaws.com'
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
