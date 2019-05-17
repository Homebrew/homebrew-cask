cask 'gitahead' do
  version '2.5.6'
  sha256 '07a8ec9c9b02b16457bc2f8ec136d20172074dfc78ae1625e79f0c832d747c50'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end
