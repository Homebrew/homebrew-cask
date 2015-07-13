cask :v1 => 'leksah' do
  version '0.15.1.0-ghc-7.10.1'
  sha256 'b8f0afc20c39e70b05575d59e07f36af7853baec02d2055ffc5b369de7434f90'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
