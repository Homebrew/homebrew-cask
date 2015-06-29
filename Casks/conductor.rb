cask :v1 => 'conductor' do
  version '1.2.1'
  sha256 '0df00414d64474093aeefd9f7b81fd80bb8a98da2b713164e498df6cd0e60cca'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom'
  name 'Conductor'
  homepage 'https://github.com/keith/conductor'
  license :mit

  app 'Conductor.app'
end
