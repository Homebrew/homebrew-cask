cask 'snowflake-snowsql' do
  version '1.1.85'
  sha256 '865d280cc92d52dc04c7a938d05806832e9bf1a9786cdf3413e3a92aed031487'

  # sfc-snowsql-updates.s3.us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://sfc-snowsql-updates.s3.us-west-2.amazonaws.com/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  appcast 'https://sfc-snowsql-updates.s3.us-west-2.amazonaws.com'
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
