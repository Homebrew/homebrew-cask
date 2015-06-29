cask :v1 => 'pg-commander' do
  version '1.5.5'
  sha256 '802a605757dcfff8ea5227ecd74c10ef2f3ca8f63a0b4aadc7c2052f37270c82'

  url "https://eggerapps.at/pgcommander/download/pgcommander-#{version}.zip"
  name 'PG Commander'
  homepage 'https://eggerapps.at/pgcommander/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PG Commander.app'
end
