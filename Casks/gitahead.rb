cask 'gitahead' do
  version '2.5.9'
  sha256 '12cb7a3909950d8b3ba1f5ff30de5fcb99731cf546242df2e938fc91264de41a'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end
