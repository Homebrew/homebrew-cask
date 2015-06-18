cask :v1 => 'race-for-the-galaxy' do
  version '0.9.4'
  sha256 'f60585e3f47cf09df77c578bb1c7dad31dfe4dbe223da35f190b2573a2803bd7'

  url "http://keldon.net/rftg/rftg-osx-#{version}.zip"
  name 'Race for the Galaxy'
  homepage 'http://keldon.net/rftg/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Race for the Galaxy.app'
end
