cask 'meta' do
  version '1.8.4'
  sha256 '40e60fdf05bf4a7ebd8f76bc2cc6729c43f7cb380021c2be2895fce8dc770884'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/',
          checkpoint: 'e5b9ba14c81d5b2eb80f7f9130680a9bada7be1e544ba31b2066dfdfd3c9afa9'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
