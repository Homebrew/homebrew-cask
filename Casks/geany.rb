cask :v1 => 'geany' do
  version '1.25'
  sha256 '4b1fbe9a3abfe0c40da90542ca7fadac6c1147f73263f1f5118cc94fc4d2b85d'

  url "http://download.geany.org/geany-#{version}_osx.dmg"
  name 'Geany'
  homepage 'http://www.geany.org'
  license :gpl

  app 'Geany.app'

  depends_on :macos => '>= :lion'
end
