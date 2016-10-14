cask 'geany' do
  version '1.27'
  sha256 'ce629ba35aebbd71e054c3cd32984abc41f368f0d578864a2c1b3662f9b00ecc'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
