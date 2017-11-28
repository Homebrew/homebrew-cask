cask 'geany' do
  version '1.32'
  sha256 'f00d61b8e7e23d06e5b11f7f27719db4b4a4531e483f8da63552cec79caf051d'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom',
          checkpoint: '454388cf49281e2183226230b8d9a094fd052928c4240299ab6cbb226464de99'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
