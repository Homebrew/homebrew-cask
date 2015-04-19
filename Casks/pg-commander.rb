cask :v1 => 'pg-commander' do
  version '1.5.3'
  sha256 '1c67c3ad969c11f503b0b082c1f0380869f40257b4f2141bcc2bb8212f6c24db'

  url "https://eggerapps.at/pgcommander/download/pgcommander-#{version}.zip"
  name 'PG Commander'
  homepage 'http://eggerapps.at/pgcommander/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PG Commander.app'
end
