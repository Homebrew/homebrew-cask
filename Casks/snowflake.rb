cask :v1 => 'snowflake' do
  version '1.0-148'
  sha256 'd9d1f67801bd9ae82e33ca1fcf2bb9463442a62ed3d48f2cc20f73e6d1624b0b'

  url "http://assets.vemedio.com/software/snowflake/Snowflake-#{version}.zip"
  homepage 'http://vemedio.com/products/snowflake'
  license :commercial

  app 'Snowflake.app'
end
