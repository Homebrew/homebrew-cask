cask 'geany' do
  version '1.32'
  sha256 '0fa8110d68016a0cb20ab5f2a502db46c803cada01f53fc91cb4f2e767f6dbaa'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom',
          checkpoint: '454388cf49281e2183226230b8d9a094fd052928c4240299ab6cbb226464de99'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
