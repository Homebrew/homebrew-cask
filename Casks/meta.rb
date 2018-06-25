cask 'meta' do
  version '1.8.4'
  sha256 '40e60fdf05bf4a7ebd8f76bc2cc6729c43f7cb380021c2be2895fce8dc770884'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
