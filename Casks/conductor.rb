cask :v1 => 'conductor' do
  version '1.3.0'
  sha256 'e1a63c988fbcc9de3307987b53799632de4101ab41c9215610f6c9a70c411816'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom'
  name 'Conductor'
  homepage 'https://github.com/keith/conductor'
  license :mit

  app 'Conductor.app'

  accessibility_access true
end
