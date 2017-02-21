cask 'snowflake-snowsql' do
  version '1.1.9.50680'
  sha256 '73d80c8b4250ac68f8294f45822b7304547322c3867a73a6b9b8b04cff9e8687'

  # s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/sfc-snowsql-updates-testing/bootstrap/1.1/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://www.snowflake.net/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
