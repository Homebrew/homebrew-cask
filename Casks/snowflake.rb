cask :v1 => 'snowflake' do
  version '1.0.1-170'
  sha256 '095f2f22427cfab9b5ef3bbd09d03fb6430c98857934f1ca2140f01b70fb3a7e'

  url "http://assets.vemedio.com/software/snowflake/Snowflake-#{version}.zip"
  name 'Snowflake'
  appcast 'http://vemedio.com/appcast/snowflake',
          :sha256 => '216d072a399a7467562d2eb6d491027ed4bab71ca5ad6204f040dda686f3a5c6'
  homepage 'http://vemedio.com/products/snowflake'
  license :commercial

  app 'Snowflake.app'

  caveats do
    discontinued
  end
end
