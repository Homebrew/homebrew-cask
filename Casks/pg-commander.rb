cask :v1 => 'pg-commander' do
  version '1.5.2'
  sha256 'a7e848ad20f38cc6f9c9fd6ebccb62390fe7c050aaae5b3670c40f94019757ee'

  url "https://eggerapps.at/pgcommander/download/pgcommander-#{version}.zip"
  homepage 'http://eggerapps.at/pgcommander/'
  license :unknown

  app 'PG Commander.app'
end
