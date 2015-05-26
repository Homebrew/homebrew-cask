cask :v1 => 'snowflake' do
  version '1.0.1-170'
  sha256 '095f2f22427cfab9b5ef3bbd09d03fb6430c98857934f1ca2140f01b70fb3a7e'

  url "http://assets.vemedio.com/software/snowflake/Snowflake-#{version}.zip"
  name 'Snowflake'
  homepage 'http://vemedio.com/products/snowflake'
  license :commercial

  app 'Snowflake.app'
end
