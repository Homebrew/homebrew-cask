cask 'snowflake-snowsql' do
  version '1.2.5'
  sha256 '971bf6acffa5609101021b83a1eaeb40978312211040078548326b179fe872d8'

  # sfc-repo.snowflakecomputing.com/ was verified as official when first introduced to the cask
  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name 'SnowSQL'
  homepage 'https://snowflake.com/'

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: 'net.snowflake.snowsql'
end
