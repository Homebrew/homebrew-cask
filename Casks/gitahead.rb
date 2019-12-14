cask 'gitahead' do
  version '2.6.0'
  sha256 'dda42197109c2e67fd5cb585c1febeaa0e7c4b6d08c6b844ad4468e515d93a0b'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end
