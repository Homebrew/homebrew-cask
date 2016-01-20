cask 'geany' do
  version '1.26'
  sha256 'baa663b085f9f187fc1884f274a3528b816bf5b9686072d6920e148c7c9461b8'

  url "http://download.geany.org/geany-#{version}_osx.dmg"
  name 'Geany'
  homepage 'http://www.geany.org'
  license :gpl

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
