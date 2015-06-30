cask :v1 => 'pg-commander' do
  version '1.5.6'
  sha256 '6793dc4b3c6b5fd77b615ae9eb29783d17d264b35f765793f938cef4eb60a852'

  url "https://s3-eu-west-1.amazonaws.com/eggerapps.at/pgcommander/download/pgcommander-#{version}.zip"
  name 'PG Commander'
  homepage 'https://eggerapps.at/pgcommander/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PG Commander.app'
end
