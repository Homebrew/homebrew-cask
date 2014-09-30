class PgCommander < Cask
  version '1.5.1'
  sha256 '082dc5b5c08e0df543424e86eef76d9aae121f7d64adf458d327542b30cd1185'

  url "https://eggerapps.at/pgcommander/download/pgcommander-#{version}.zip"
  homepage 'http://eggerapps.at/pgcommander/'

  app 'PG Commander.app'
end
