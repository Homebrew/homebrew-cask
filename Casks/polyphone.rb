cask 'polyphone' do
  version '2.1'
  sha256 '7ed0c6b830ea696cf9e900551e7cd1424479f432eb2091a404a1e4bbd10c8b7d'

  url "https://www.polyphone-soundfonts.com/en/download/file/618-polyphone-#{version.dots_to_hyphens}-app-zip/latest/download?36f23ac782f106bdd2566faa6088954a=1&return=aHR0cHMlM0ElMkYlMkZ3d3cucG9seXBob25lLXNvdW5kZm9udHMuY29tJTJGZW4lMkZkb3dubG9hZA=="
  appcast 'https://www.polyphone-soundfonts.com/en/download'
  name 'Polyphone'
  homepage 'https://polyphone-soundfonts.com/'

  app 'Polyphone.app'
end
