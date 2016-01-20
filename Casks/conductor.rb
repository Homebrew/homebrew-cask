cask 'conductor' do
  version '1.3.0'
  sha256 'e1a63c988fbcc9de3307987b53799632de4101ab41c9215610f6c9a70c411816'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom',
          checkpoint: 'e9db5592440216e156b93dfe69a597508047dbda993e3ad8f528a5b54d448d00'
  name 'Conductor'
  homepage 'https://github.com/keith/conductor'
  license :mit

  accessibility_access true

  app 'Conductor.app'
end
